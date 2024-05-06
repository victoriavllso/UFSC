// Copyright [2018] <COLOQUE SEU NOME AQUI...>
#ifndef STRUCTURES_ARRAY_QUEUE_H
#define STRUCTURES_ARRAY_QUEUE_H

#include <cstdint>  // std::size_t
#include <stdexcept>  // C++ Exceptions

namespace structures { //IMPLEMENTAÇÃO CIRCULAR (MAIS EFICIENTE), SEM MOVIMENTAÇÃO DE DADOS

template<typename T>
//! classe ArrayQueue
class ArrayQueue {
 public:
    //! construtor padrao
    ArrayQueue();
    //! construtor com parametro
    explicit ArrayQueue(std::size_t max);
    //! destrutor padrao
    ~ArrayQueue();
    //! metodo enfileirar
    void enqueue(const T& data);
    //! metodo desenfileirar
    T dequeue();
    //! metodo retorna o ultimo
    T& back();
    //! metodo limpa a fila
    void clear();
    //! metodo retorna tamanho atual
    std::size_t size();
    //! metodo retorna tamanho maximo
    std::size_t max_size();
    //! metodo verifica se vazio
    bool empty();
    //! metodo verifica se esta cheio
    bool full();

 private:
    T* contents;
    std::size_t size_;
    std::size_t max_size_;
    int begin_;  // indice do inicio (para fila circular)
    int end_;  // indice do fim (para fila circular)
    static const auto DEFAULT_SIZE = 10u;
};

}  // namespace structures

#endif

//! construtor padrao
template<typename T>
structures::ArrayQueue<T>::ArrayQueue() {
    max_size_ = DEFAULT_SIZE;
    contents = new T[max_size_];
    begin_ = 0;
    end_ = -1;
    size_ = 0;
}

//! construtor com parametro
template<typename T>
structures::ArrayQueue<T>::ArrayQueue(std::size_t max) {
    max_size_ = max;
    contents = new T[max_size_];
    begin_ = 0;
    end_ = -1;
    size_ = 0; //size_ = quantidade ou tamanho atual
}

//! destrutor padrao
template<typename T>
structures::ArrayQueue<T>::~ArrayQueue() {
    delete [] contents;
}

//! metodo enfileirar
template<typename T>
void structures::ArrayQueue<T>::enqueue(const T& data) {
    // COLOQUE SEU CODIGO AQUI...
    if (full()) {
        throw std:: out_of_range("fila cheia !");
    }
    end_ = (end_ + 1) % max_size_; //calculo a próxima posição
    size_++; //aumenta a quantidade
    contents[end_] = data; //adiciona o dado na posição calculada

}

//! metodo desenfileirar
template<typename T>
T structures::ArrayQueue<T>::dequeue() {
    // COLOQUE SEU CODIGO AQUI...
    if (empty()) {
        throw std:: out_of_range("fila vazia !");
    }
    T data = contents[begin_]; //para retornar o dado do inicio
    begin_ = (begin_ + 1) % max_size_;
    size_--; //retiro um da quantidade atual
    return data;
}

//! metodo retorna o ultimo
template<typename T>
T& structures::ArrayQueue<T>::back() {
    // COLOQUE SEU CODIGO AQUI...
    if (empty()) {
        throw std:: out_of_range("fila vazia !");
    }
    return contents[end_];
}

//! metodo limpa a fila
template<typename T>
void structures::ArrayQueue<T>::clear() {
    // COLOQUE SEU CODIGO AQUI...
    begin_ = 0;
    end_ = -1;
    size_ = 0;
}

//! metodo retorna tamanho atual
template<typename T>
std::size_t structures::ArrayQueue<T>::size() {
    // COLOQUE SEU CODIGO AQUI...
    return size_;
}

//! metodo retorna tamanho maximo
template<typename T>
std::size_t structures::ArrayQueue<T>::max_size() {
    // COLOQUE SEU CODIGO AQUI...
    return max_size_;
}

//! metodo verifica se vazio
template<typename T>
bool structures::ArrayQueue<T>::empty() {
    // COLOQUE SEU CODIGO AQUI...
    return size() == 0;
}

//! metodo verifica se esta cheio
template<typename T>
bool structures::ArrayQueue<T>::full() {
    // COLOQUE SEU CODIGO AQUI...
    return size() == max_size();
}
