//! Copyright [year] <Copyright Owner>
#ifndef STRUCTURES_LINKED_LIST_H
#define STRUCTURES_LINKED_LIST_H

#include <cstdint>


namespace structures {

//! ...
template<typename T>
class LinkedList {
 public:
    //! ...
    LinkedList();  // construtor padrão
    //! ...
    ~LinkedList();  // destrutor
    //! ...
    void clear();  // limpar lista
    //! ...
    void push_back(const T& data);  // inserir no fim
    //! ...
    void push_front(const T& data);  // inserir no início
    //! ...
    void insert(const T& data, std::size_t index);  // inserir na posição
    //! ...
    void insert_sorted(const T& data);  // inserir em ordem
    //! ...
    T& at(std::size_t index);  // acessar um elemento na posição index
    //! ...
    T pop(std::size_t index);  // retirar da posição
    //! ...
    T pop_back();  // retirar do fim
    //! ...
    T pop_front();  // retirar do início
    //! ...
    void remove(const T& data);  // remover específico
    //! ...
    bool empty() const;  // lista vazia
    //! ...
    bool contains(const T& data) const;  // contém
    //! ...
    std::size_t find(const T& data) const;  // posição do dado
    //! ...
    std::size_t size() const;  // tamanho da lista

 private:
    class Node {  // Elemento (implementação pronta)
     public:
        explicit Node(const T& data): //construtor com parametro dado
            data_{data}
        {}

        Node(const T& data, Node* next): //construtor com parametro dado e proximo
            data_{data},
            next_{next}
        {}

        T& data() {  // getter: dado
            return data_;
        }

        const T& data() const {  // getter const: dado
            return data_;
        }

        Node* next() {  // getter: próximo
            return next_;
        }

        const Node* next() const {  // getter const: próximo
            return next_;
        }

        void next(Node* node) {  // setter: próximo
            next_ = node;
        }

     private:
        T data_;
        Node* next_{nullptr};
    };

    Node* before_index(std::size_t index) {  // nó anterior ao 'index'
        auto it = head;
        for (auto i = 1u; i < index; ++i) {
            it = it->next();
        }
        return it;
    }

    Node* head{nullptr};
    Node* tail{nullptr};
    std::size_t size_{0u};
};

}  // namespace structures

#endif


//! Construtor
template<typename T>
structures::LinkedList<T>::LinkedList() { //construtor padrão
    head = nullptr;
    tail = nullptr;
    size_ = 0u;
}

//! Destrutor
template<typename T>
structures::LinkedList<T>::~LinkedList() { //destrutor
    clear();
}

//! Esvazia
template<typename T>
void structures::LinkedList<T>::clear() {
    while (!empty()) {
        pop_front();
    }
}

//! Inserção no início
template<typename T>
void structures::LinkedList<T>::push_front(const T& data) {
    Node *novo;
    novo = new Node(data, head);
    if (novo == nullptr) {
        throw std::out_of_range("memória insuficiente");
    }
    if (head == nullptr) { //se a lista estiver vazia
        tail = novo; // tanto head quando tail devem apontar para o novo nó
    }
    head = novo;
    size_++;
}

//! Inserção no fim
template<typename T>
void structures::LinkedList<T>::push_back(const T& data) {
    Node *novo;
    if (empty()) {
        return push_front(data);
    }
    novo = new Node(data, nullptr);
    if (novo == nullptr) {
        throw std::out_of_range("memória insuficiente");
    }
    tail->next(novo); //faz o atual ultimo no apontar para o novo
    tail = novo; //atualiza o ultimo nó
    size_++;
}
//! Dado da posição 'index'
template<typename T>
T& structures::LinkedList<T>::at(std::size_t index) {
    if (index >= size()) {
        throw std::out_of_range("indice invalido");
    }
    if (empty()) {
        throw std::out_of_range("Lista vazia");
    }
    Node *prox;
    prox = head;
    for (size_t i = 0; i < index; i++) {
        prox = prox->next();
    }
    return prox->data();
}

//! Inserção na posição 'index'
template<typename T>
void structures::LinkedList<T>::insert(const T& data, std::size_t index) {
    if ( index > size() ) {
    throw std::out_of_range("indice invalido !");
    }
    if (index == 0) {
    return push_front(data);
    }
    if (index == size()) {
    return push_back(data);
    }
    Node *novo;
    novo = new Node(data, nullptr);
    if (novo == nullptr) {
        throw std::out_of_range("memória insuficiente");
    }
    Node *prox, *ant;
    ant = nullptr;
    ant = before_index(index);
    prox = before_index(index+1);
    novo->next(prox);
    ant->next(novo);
    size_++;
}

//! Inserção ordenada
template<typename T>
void structures::LinkedList<T>::insert_sorted(const T& data) {
    Node *prox;
    prox = head;
    std::size_t i =0;
    while(prox != nullptr && prox->data() < data) {
        i++;
        prox = prox->next();
    }
    return insert(data, i);
}

//! Remoção do início
template<typename T>
T structures::LinkedList<T>::pop_front() {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    }
    T aux;
    Node *p;
    p = head;
    head = p->next(); //atualiza a cabeça da lista para o segundo elemento (será o novo primeiro elemento)
    aux = p->data();
    delete p;
    if (head == nullptr) {
        tail = nullptr;
    }
    size_--;
    return aux;
}

//! Remoção do fim
template<typename T>
T structures::LinkedList<T>::pop_back() {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    }
    if (size() == 1) {
        return pop_front();
    }
    T aux;
    Node *p, *ant;
    ant = nullptr;
    p = head;
    while (p != tail) {  // 'ant' deve apontar para o penúltimo nó
        ant = p;
        p = p->next();
    }
    aux = p->data();
    delete p;
    if (ant == nullptr) {
        head = nullptr;
    } else {
        ant->next(nullptr);
    }
    tail = ant;
    size_--;
    return aux;
}

//! Remoção da posição 'index'
template<typename T>
T structures::LinkedList<T>::pop(std::size_t index) {
   if (empty()) {
       throw std::out_of_range("lista vazia");
   }
   if (index == 0) {
       return pop_front();
   }
   if (index >= size()) {
       throw std::out_of_range("indice fora do range");
   }
   if (index == size()-1) {
       return pop_back();
   }
    Node* anterior, *proximo;
    T aux;
    for (size_t i = 0; i < index-1; i++) {
        anterior = proximo;
        proximo = proximo->next();
    }
    aux = proximo->data();
    anterior->next(proximo->next());
    delete proximo;
    size_--;
    return aux;
}
[A,B,C,D,E,F]
[F,E,D,C,B,A]
//! Remoção de um dado
template<typename T>
void structures::LinkedList<T>::remove(const T& data) {
    pop(find(data));
}

//! Verificação de vazia
template<typename T>
bool structures::LinkedList<T>::empty() const {
    return size() == 0u;
}

//! Verificação se contém um dado
template<typename T>
bool structures::LinkedList<T>::contains(const T& data) const {
    return find(data) != size();
}

//! Índice de um dado (se existir); ou 'size() (se não existir)
template<typename T>
std::size_t structures::LinkedList<T>::find(const T& data) const {
    Node* aux = head;
    for (size_t i = 0; i < size_; i++) {
        if (aux->data() == data) {
            return i;
        }
        aux = aux->next();
    }
    return size_;
}

//! Quantidade atual de elementos
template<typename T>
std::size_t structures::LinkedList<T>::size() const {
    return size_;
}