; Carregar o arquivo de configuração do Quicklisp
(load (merge-pathnames "quicklisp/setup.lisp"
                       (user-homedir-pathname)))

; Carregar o pacote split-sequence usando Quicklisp
(ql:quickload "split-sequence")
(use-package :split-sequence)

; Definir o pacote do seu código
(defpackage :my-package
  (:use :cl))

(in-package :my-package)




(defun read-input (path)
  (with-open-file (stream path)
    (let* ((contents (loop for line = (read-line stream nil)
                           while line
                           collect (string-trim " " line)))
           (file-lines (remove-if #'null (mapcar (lambda (line) (string-trim " " line)) contents)))
           (size (parse-integer (first (split-sequence:split-sequence #\Space (second file-lines)))))
           (fill-matrix (extract-matrix size file-lines "starting board"))
           (regions (extract-regions size file-lines "regions")))
      (values fill-matrix regions size))))

(defun extract-matrix (size lines start-key)
  (let ((idx (position start-key lines :test #'string=)))
    (if idx
        (mapcar (lambda (line) (mapcar #'parse-integer (split-sequence:split-sequence #\Space (nth (1+ idx) lines)))))
                (loop for i from 0 below size collect (nth (+ idx 1 i) lines)))
        nil))

(defun extract-regions (size lines start-key)
  (let ((idx (position start-key lines :test #'string=)))
    (if idx
        (reduce (lambda (acc row)
                  (let ((row-idx (car row))
                        (row-content (cdr row)))
                    (reduce (lambda (m region)
                              (let ((col-idx (car region))
                                    (region-name (cdr region)))
                                (if (gethash region-name m)
                                    (setf (gethash region-name m) (append (gethash region-name m) (list (cons row-idx col-idx))))
                                    (setf (gethash region-name m) (list (cons row-idx col-idx))))
                                m)))
                            acc
                            (mapcar #'(lambda (col-idx region) (cons col-idx region))
                                    (mapcar #'list (loop for i from 0 below (length row-content) collect i)
                                            (split-sequence:split-sequence #\Space row-content))))))
                (make-hash-table)
                (loop for i from 0 below size collect (cons i (nth (+ idx 1 i) lines))))
        (make-hash-table)))

------------------------------------------ LÓGICA PRINCIPAL ------------------------------------------
(defun is-safe (fill-matrix regions size x y num)
  (let* ((region-key (find-region (list x y) regions)) ; "Nome" da região a qual x,y pertence
         (region (gethash region-key regions)) ; Lista de coordenadas pertencentes à região
         (region-size (decide-region-limit regions region-key)) ; Tamanho da região
         
         ;; REGRA 0: Checar se o número está dentro do limite máximo da região
         (test1 (not (> num region-size)))
         ;; REGRA 1: Checar se o número já está na região
         (test2 (not (check-num-in-region fill-matrix region num)))
         ;; REGRA 2: Checar se o número é diferente dos vizinhos diretos
         (test3 (check-boundary-and-neighbors fill-matrix size x y num))
         ;; REGRA 3: Checar se é maior que o de baixo dele e menor que o de cima, se forem da mesma região e /= 0
         (test4 (check-vertical-limits fill-matrix region x y num))
         ;; Combina todos os testes para avaliar resultados
         (tests (list test1 test2 test3 test4)))
    
    ;; Se der positivo em todos os testes, retorna T (adiciona valor à posição)
    (every #'(lambda (test) (eq test t)) tests)))

------------------------------------------ FUNÇÕES AUXILIARES ------------------------------------------
-- Função para checar Regra 3
(
  defun check-vertical-limits (fill-matrix region x y num)
  (let* ((closest-above (find-closest-above fill-matrix region x y)) ; Encontra o número mais próximo acima de (x, y) na região
         (closest-below (find-closest-below fill-matrix region x y))) ; Encontra o número mais próximo abaixo de (x, y) na região
    (and (or (= closest-above 0) (< num closest-above))  ; Se o num encontrado for /= 0, ele deve ser menor que num 
         (or (= closest-below 0) (> num closest-below))))) ; Se o num encontrado for /= 0, ele deve ser maior que num

-- Filtra apenas os valores na mesma coluna (mesmo y) e com x > x atual, e pega o menor x possível, ou 0 se não houver
(defun find-closest-above (fill-matrix region x y)
  (let* ((above (remove-if-not (lambda (coords)
                                   (let ((nx (car coords))
                                         (ny (cadr coords)))
                                     (and (= ny y) (< nx x) (/= (aref fill-matrix nx ny) 0))))
                                 region))
         (closest (reduce (lambda (acc coords)
                            (let* ((nx (car coords))
                                   (ny (cadr coords))
                                   (current-dist (abs (- nx x)))
                                   (acc-dist (abs (- (car acc) x))))
                              (if (or (= acc-dist 0) (< current-dist acc-dist))
                                  (cons nx (aref fill-matrix nx ny))
                                  acc)))
                          (list x 0)
                          above)))
    (cdr closest)))

-- Filtra apenas os valores na mesma coluna (mesmo y) e com x < x atual, e pega o maior x possível, ou 0 se não houver
(defun find-closest-below (fill-matrix region x y)
  (let* ((below (remove-if-not (lambda (coords)
                                   (let ((nx (car coords))
                                         (ny (cadr coords)))
                                     (and (= ny y)
                                          (> nx x)
                                          (/= (aref fill-matrix nx ny) 0))))
                                 region))
         (closest (reduce (lambda (acc coords)
                            (let* ((nx (car coords))
                                   (ny (cadr coords))
                                   (current-dist (abs (- nx x)))
                                   (acc-dist (abs (- (car acc) x))))
                              (if (or (= acc-dist 0) (< current-dist acc-dist))
                                  (cons nx (aref fill-matrix nx ny))
                                  acc)))
                          (list x most-positive-fixnum)
                          :initial-value (list x most-positive-fixnum)
                          :key #'identity
                          :from-end nil)))
    (if (= (cadr closest) most-positive-fixnum)
        0
        (cadr closest))))

;; Função para checar Regra 2

(defun check-boundary-and-neighbors (fill-matrix size x y num)
  (let ((neighbors (list (cons (- x 1) y) (cons (+ x 1) y) (cons x (- y 1)) (cons x (+ y 1))))  ;; Define os vizinhos a serem testados
        (valid-neighbors (remove-if-not (lambda (neighbor) (is-valid-neighbor size neighbor)) neighbors))  ;; Checa se não está na borda da matriz fill
        (check-results (mapcar (lambda (neighbor) (let ((nx (car neighbor))
                                                         (ny (cdr neighbor)))
                                                     (list nx ny (= (aref (aref fill-matrix nx) ny) num)))) valid-neighbors)))  ;; Testa se num == vizinho para cada vizinho
    (reduce (lambda (acc result) (and acc (not (third result)))) t check-results)))  ;; Nenhum vizinho pode ser igual a num para retornar True


;; Função para checar se um vizinho não está na borda da matriz fill (daria erro de índice)
(defun is-valid-neighbor (size neighbor)
  (let ((x (car neighbor))
        (y (cdr neighbor)))
    (and (>= x 0) (< x size) (>= y 0) (< y size))))


;; Função para checar regra 1
(defun check-num-in-region (fill-matrix positions num)
  (if (null positions)
      nil
      (let ((current (car positions)))
        (if (= (aref (aref fill-matrix (car current)) (cdr current)) num)  ;; Se o número estiver na região, retorna True
            t
            (check-num-in-region fill-matrix (cdr positions) num)))))  ;; Se não, continua procurando

;; Função para encontrar a região de um ponto (x, y)
(defun decide-region-limit (regions key)
  (let ((region-list (gethash key regions)))  ;; Retrieves the region list from the hash table
    (if region-list
        (length region-list)  ;; Given the region of x,y, returns the size of the region
        0)))  ;; Returns 0 if no region is found

;; FUncao que determina a regiao de x,y
(defun find-region (coordinates regions)
  (let ((region-keys (loop for key being the hash-keys of regions collect key)))  ;; Prepares to search for the keys of the regions
    (find-region-helper coordinates regions region-keys)))

;; Funcao que percorre as regioes e verifica se x,y esta em alguma delas
(defun find-region-helper (coordinates regions keys)
  (if (null keys)
      nil  ;; Returns nil if no keys are left to check
      (let ((key (first keys)))
        (if (region-contains (gethash key regions) (first coordinates) (second coordinates))
            key  ;; If the region contains x,y, returns the key of the region
            (find-region-helper coordinates regions (rest keys))))))  ;; If not, continues searching

;; checa se um ponto esta em uma regiao
(defun region-contains (coordinates x y)
  (cond
    ((null coordinates) nil)  ;; Returns nil if the list is empty
    ((equal (first coordinates) (list x y)) t)  ;; Checks if the current coordinate matches (x, y)
    (t (region-contains (rest coordinates) x y))))  ;; Otherwise, continues searching



(defun solve-kojun (fill-matrix regions size x y)
  ;; Caso base 1: Chegamos ao final do tabuleiro (última linha e além da última coluna).
  ;; Isso indica que encontramos uma solução válida, então retornamos `Just fillMatrix`.
  (cond
    ((and (= x (- size 1)) (= y size)) fill-matrix) ;; se chegamos ao final, retornamos a matriz

    ;; Caso base 2: Se chegamos ao final da linha (`y == size`), passamos para a próxima linha 
    ;; (`x + 1`) e reiniciamos a coluna para 0 (`y = 0`).  
    ((= y size) (solve-kojun fill-matrix regions size (+ x 1) 0)) ;; se chegamos ao final da linha, passamos para a próxima

    ;; Caso base 3: Se a célula atual (`fillMatrix !! x !! y`) já está preenchida (valor maior que 0),
    ;; apenas avançamos para a próxima célula na mesma linha (`y + 1`).
    ((> (aref fill-matrix x y) 0) (solve-kojun fill-matrix regions size x (+ y 1))) ;; se a célula já está preenchida, passamos para a próxima

    ;; Caso geral: Se a célula está vazia, tentamos preenchê-la com números de 1 a `size`.
    (t (try-numbers (loop for i from 1 to size collect i))) ;; tentamos preencher com numeros de 1 até size
  ))

;; funcao que tenta preencher a matriz com os numeros (solve-kojun)
(defun try-numbers (nums fill-matrix regions size x y)
  (if (null nums)
      nil ;; se não conseguimos preencher com nenhum número, retornamos Nothing
      (let ((num (first nums))
            (rest (rest nums)))
        (if (is-safe fill-matrix regions size x y num)
            ;; Se o número é seguro, criamos uma nova matriz (`newMatrix`) com o número `num` 
            ;; inserido na posição `(x, y)`.
            (let ((new-matrix (update-matrix fill-matrix x y num))) ;; Atualiza a matriz com o número escolhido
              ;; Chamamos recursivamente `solve-kojun` com a nova matriz e a próxima célula.
              (let ((solution (solve-kojun new-matrix regions size x (+ y 1))))
                (if solution
                    solution
                    (try-numbers rest fill-matrix regions size x y)))) ;; Se falhar, tenta o próximo número
            (try-numbers rest fill-matrix regions size x y))))) ;; Avança para o próximo número

;; Atualiza a matriz com o valor escolhido
(defun update-matrix (matrix x y val)
  (let ((new-matrix (mapcar #'copy-seq matrix))) ;; Copia a matriz
    (setf (aref (aref new-matrix x) y) val) ;; Atualiza a célula (x, y)
    new-matrix))


; --------------------------------- FUNÇÃO DE FORMATAÇÃO DA SAÍDA --------------------------------------------

(defun format-row (row)
  (format nil "[~{~a~^,~}]" row))

; ------------------------------------------- MAIN -------------------------------------------------------
(defun main (&optional (args (ext:argv)))
  (let ((file-path (nth 1 args)))
    (if (or (null file-path) (string= file-path ""))
        (format t "Erro: forneça o caminho para o arquivo .txt como argumento.")
        (multiple-value-bind (fill-matrix regions size) (read-input file-path)
          (let ((result (solve-kojun fill-matrix regions size 0 0)))
            (if result
                (progn
                  (format t "Matriz resolvida com sucesso:~%")
                  (mapc (lambda (row) (format t "~a~%" (format-row row))) result))
                (format t "Não foi possível resolver a matriz.")))))))

