/ Copyright [2019] <Victória Rodrigues Veloso...>
#ifndef STRUCTURES_ARRAY_STACK_H
#define STRUCTURES_ARRAY_STACK_H

#include <cstdint>  // std::size_t
#include <stdexcept>  // C++ exceptions

namespace structures {

template<typename T>
//! CLASSE PILHA
class ArrayStack {
 public:
    //! construtor simples
    ArrayStack();
    //! construtor com parametro tamanho
    explicit ArrayStack(std::size_t max);
    //! destrutor
    ~ArrayStack();
    //! metodo empilha
    void push(const T& data);
    //! metodo desempilha
    T pop();
    //! metodo retorna o topo
    T& top();
    //! metodo limpa pilha
    void clear();
    //! metodo retorna tamanho
    std::size_t size();
    //! metodo retorna capacidade maxima
    std::size_t max_size();
    //! verifica se esta vazia
    bool empty();
    //! verifica se esta cheia
    bool full();

 private:
    T* contents;
    int top_;
    std::size_t max_size_;

    static const auto DEFAULT_SIZE = 10u;
};

}  // namespace structures

#endif

//-----------------------------------------------------------------------------

template<typename T>  //constutor simples
structures::ArrayStack<T>::ArrayStack() {
    max_size_ = DEFAULT_SIZE;
    contents = new T[DEFAULT_SIZE];
    top_ = -1;
}

template<typename T> //construtor com parametro tamanho
structures::ArrayStack<T>::ArrayStack(std::size_t max) {
    max_size_ = max;
    contents = new T[max_size_];
    top_ = -1;
}

template<typename T> //destrutor
structures::ArrayStack<T>::~ArrayStack() {
    delete [] contents;
}

template<typename T> //empilha
void structures::ArrayStack<T>::push(const T& data) {
    if (full())
        throw std::out_of_range("pilha cheia");
    top_++;
    contents[top_] = data;
}

template<typename T> //desempilha
T structures::ArrayStack<T>::pop() {
    if (empty())
        throw std::out_of_range("pilha vazia");
    T aux;
    aux = contents[top_];
    top_--;
    return aux;
}

template<typename T> //retorna o topo
T& structures::ArrayStack<T>::top() {
    if (empty())
        throw std::out_of_range("pilha vazia");
    return contents[top_];
}

template<typename T> //limpa a pilha
void structures::ArrayStack<T>::clear() {
    top_ = -1;
}

template<typename T> //retorna o tamanho
std::size_t structures::ArrayStack<T>::size() {
    return top_ + 1;
}

template<typename T> //retorna a capacidade maxima
std::size_t structures::ArrayStack<T>::max_size() {
    return max_size_;
}

template<typename T> //vetifica se esta vazia
bool structures::ArrayStack<T>::empty() {
    return (top_ == -1);
}

template<typename T> //verifica se esta cheia
bool structures::ArrayStack<T>::full() {
    // return (top_ == static_cast<int>(max_size()-1));
    return size() == max_size();
}
