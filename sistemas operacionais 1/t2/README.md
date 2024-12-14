## Integrantes do grupo:
- Henrique Mateus Teodoro
- Jonatan Felipe Hartmann
- Victoria Rodrigues Veloso

## 1 - Estrutura do Projeto


A fim de proporcionar uma visão sobre o projeto, uma explicação sobre a organização das pastas e arquivos do projeto foi preparada.

### **. `interface/`**
- Esse diretório contém os arquivos responsáveis pela interface gráfica e interações do usuário no programa.
- **Arquivos:**
  - **`assets/`**
    - Armazena recursos visuais usados na interface, como imagens ou fontes.
  - **`alertScreen.cpp` / `alertScreen.hpp`**
    - **Função:** Gerencia as telas de alerta exibidas ao usuário.
  - **`inodeScreen.cpp` / `inodeScreen.hpp`**
    - **Função:** Trata da tela que interage diretamente com os inodes.
  - **`mainScreen.cpp` / `mainScreen.hpp`**
    - **Função:** Implementa a tela principal da aplicação.
  - **`screen.hpp`**
    - **Função:**  Classe base para as telas.
  - **`scrollableInodes.cpp` / `scrollableInodes.hpp`**
    - **Função:** Implementa uma interface para visualização de inodes deslizáveis.
  - **`textBox.cpp` / `textBox.hpp`**
    - **Função:** Gerencia elementos de entrada ou exibição de texto na interface.



### **. Arquivos de Cabeçalho e Código de Implementação**
- Arquivos que definem e implementam as funcionalidades centrais do sistema.
  - **`disk.cc` / `disk.h`**
    - **Função:** Implementa e define as operações relacionadas ao gerenciamento de discos.
  - **`fileOps.cc` / `fileOps.h`**
    - **Função:** Contém funções de manipulação de arquivos.
  - **`fs.cc` / `fs.h`**
    - **Função:** Implementa as operações relacionadas ao sistema de arquivos.



### **. Imagens de Disco**
- **`image.5` / `image.20` / `image.200` / `newimage.10`**
  - Arquivos que simulam imagens de disco com diferentes configurações e tamanhos.
  - **Função:** Usados como entradas  para testar o funcionamento do sistema de arquivos.



### **.Exemplos de Entrada e Saída**
- **`input_example.txt`**
  - Arquivo exemplo para carregar dados em inodes.
 
- **`output_example.txt`**
  - *Arquivo exemplo para salvar os dados de um inode.




### **. Outros Arquivos**
- **`Makefile`**
  - **Descrição:** Script utilizado para compilar o projeto, com regras para build automatizado.
- **`sfml-test.cpp`**
  - **Descrição:** Arquivo de teste relacionado à interface gráfica com SFML.
- **`shell.cc`**
  - **Descrição:** Implementa um shell de linha de comando.
- **`stdout.txt`**
  - **Descrição:** Arquivo usado internamente para renderizar o conteúdo de um inode na tela de edição de inodes.


## 2 - Instalando a biblioteca para a interface

- 1 execute o comando:
```cpp
 sudo apt-get install libsfml-dev
 ```

- 2 teste se a biblioteca funcionou executando:
```cpp
make test
 ```

3 - execute o programa: 
```cpp
./sfml-test
```
4 - uma inferface deve ser exibida, mostrando que está tudo certo.

mais informações podem ser consultadas em:

https://www.sfml-dev.org/tutorials/2.6/start-linux.php

## 3 - Executando o shell

1 - Para executar o sistema de arquivos no shell, compile da seguinte forma:

```cpp
make
```

2 - Feito isso, execute o shell com:

```cpp
./simplefs <diskfile> <nblocks>
```

## 4 - Executando o app de sistema de arquivos (interface)

1 - Primeiro, certifique-se de que já executou o teste (seção 2) e que a biblioteca está funcionando como o esperado

2 - Em seguida, limpe os arquivos para evitar conflitos:

```cpp
make clean

```

3 - Compile o programa com:

```cpp
make app

```

4 - Para executar:

```cpp
./app <diskfile> <nblocks> <readfile> <writefile>

``` 
5 - Exemplo de entradas para executar a interface

```cpp
./app image.200 200 "input_example.txt" "output_example.txt"
``` 

#### **Descrição dos parâmetros de entrada para a interface**

- **`<diskfile>:`** Arquivo de imagem de disco.
- **`<nblocks>:`** Número de blocos do arquivo de imagem.
- **`<readfile>`**  Arquivo utilizado para carregar conteúdo em um inode. Quando o botão "Carregar" é acionado na interface do inode, o conteúdo presente em <readfile> é transferido para o inode selecionado por meio da função copyin de fileOp.
- **`<writefile>`** Arquivo utilizado para salvar o conteúdo de um inode.  Ao clicar no botão "Salvar" na interface do inode, o conteúdo do inode atual é gravado no arquivo <writefile> por meio da função copyout de fileOp.
