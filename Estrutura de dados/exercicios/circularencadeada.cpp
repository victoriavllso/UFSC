//! Copyright [2024] <Victória Rodrigues Veloso>

#include <stdexcept>

namespace structures {

template<typename T>
class DoublyCircularList {
 public:
    DoublyCircularList();
    ~DoublyCircularList();

    void clear();

    void push_back(const T& data);  // insere no fim
    void push_front(const T& data);  // insere no início
    void insert(const T& data, std::size_t index);  // insere na posição
    void insert_sorted(const T& data);  // insere em ordem

    T pop(std::size_t index);  // retira da posição
    T pop_back();  // retira do fim
    T pop_front();  // retira do início
    void remove(const T& data);  // retira específico

    bool empty() const;  // lista vazia
    bool contains(const T& data) const;  // contém

    T& at(std::size_t index);  // acesso a um elemento (checando limites)
    const T& at(std::size_t index) const;  // getter constante a um elemento

    std::size_t find(const T& data) const;  // posição de um dado
    std::size_t size() const;  // tamanho

 private:
    class Node {
     public:
       //! metodo construtor sem dados
        Node():
            data_ {}
        {}
        //! metodo construtor
        explicit Node(const T& data):
            data_{data}
        {}
        //! metodo construtor
        Node(const T& data, Node* next):
            data_{data},
            next_{next}
        {}
        //! metodo construtor
        Node(const T& data, Node* prev, Node* next):
            data_{data},
            next_{next},
            prev_{prev}
        {}
        T& data() {
            return data_;
        }
        const T& data() const {
            return data_;
        }

        Node* prev() {
            return prev_;
        }
        const Node* prev() const {
            return prev_;
        }

        void prev(Node* node) {
            prev_ = node;
        }

        Node* next() {
            return next_;
        }
        const Node* next() const {
            return next_;
        }

        void next(Node* node) {
            next_ = node;
        }

     private:
        T data_;
        Node* prev_;
        Node* next_;
    };
    //! Posicionamento do ponteiro pelo caminho mais curto.
    Node *posicao(std::size_t index) {
	    if (empty()) {
	        throw std::out_of_range("Lista vazia.");
	    }
        Node *p;
        if (index < size()/2) {  // Do início para o fim.
            p = head -> next();
            for (std::size_t i = 0; i < index; i++) {
                p = p -> next();
            }
        } else {  // Do fim para o início.
            p = head -> prev();
            for (std::size_t i = size()-1; i > index; i--) {
                p = p -> prev();
            }
        }
        return p;
    }

    Node* head;
    std::size_t size_;
};

}  // namespace structures

template<typename T>
structures::DoublyCircularList<T>::DoublyCircularList() {
    Node *sentinela = new Node();
    sentinela->next(sentinela);
    sentinela->prev(sentinela);
    head = sentinela;
    size_ = 0;
}
template<typename T>
structures::DoublyCircularList<T>::~DoublyCircularList() {
	clear();
}

template<typename T>
void structures::DoublyCircularList<T>::clear() {
	while (!empty()) {
		pop_front();
	}
}
template<typename T>
void structures::DoublyCircularList<T>::push_front(const T& data) {
    Node *novo = new Node(data);
    if (novo != nullptr) {
    novo->prev(head);
    novo->next(head->next());
    head->next()->prev(novo);
    head->next(novo);
    size_++;
    } else {
    throw std::out_of_range("memória insuficiente");
    }
}
template<typename T>
void structures::DoublyCircularList<T>::remove(const T& data) {
    if (empty()) {
        throw std::out_of_range("Lista vazia !");
    }
    Node *p = head->next();
    while (p != head && p->data() != data) {
      p = p->next();
    }
    Node *anterior = p->prev();
    anterior->next(p->next());
    if (p->next() != nullptr) {
        p->next()->prev(anterior);
    }
    delete p;
    size_--;
}

template<typename T>
void structures::DoublyCircularList<T>::push_back(const T& data) {
    Node *novo = new Node(data);
    if (novo != nullptr) {
    Node *ultimo;
    ultimo = head->prev();
    novo->prev(ultimo);
    novo->next(head);
    ultimo->next(novo);
    head->prev(novo);
    size_++;
    } else {
	    throw std::out_of_range("memória insuficiente");
    }
}

template<typename T>
void structures::DoublyCircularList<T>::insert
(const T& data, std::size_t index) {
    if (index == 0) {
    return push_front(data);
    }
    if (index == size() -1) {
    push_back(data);
    }
    if (index >= size() || index < 0) {
    throw std::out_of_range("Indice inválida");
    }
    Node *novo = new Node(data);
    if (novo != nullptr) {
    Node *atual, *anterior;
    atual = posicao(index);
    anterior = atual->prev();
    novo->prev(anterior);
    novo->next(atual);
    anterior->next(novo);
    atual->prev(novo);
    size_++;
    } else {
    throw std::out_of_range("memória insuficiente");
    }
}

template<typename T>
void structures::DoublyCircularList<T>::insert_sorted(const T& data) {
    if (empty()) {
    return push_front(data);
    }
    Node *atual = head->next();
    while (atual != head && atual ->data() < data) {
        atual = atual->next();
    }
    Node *novo = new Node(data);
    if (novo != nullptr) {
    Node *anterior = atual->prev();
    anterior->next(novo);
    novo->prev(anterior);
    novo->next(atual);
    atual->prev(novo);
    size_++;
    } else {
    throw std::out_of_range("memória insuficiente");
    }
}

template<typename T>
T structures::DoublyCircularList<T>::pop(std::size_t index) {
	if (empty()) {
	    throw std::out_of_range("Lista vazia.");
	}
    if (index >= size() || index < 0) {
    throw std::out_of_range("Indice inválido");
    }
    if (index == 0) {
        return pop_front();
    }
    if (index == size() -1) {
    return pop_back();
    }
    if (index >0 && index < size()-1) {
    Node *anterior, *atual;
    T aux;
    atual = posicao(index);
    anterior = atual->prev();
    anterior->next(atual->next());
    atual->next()->prev(anterior);
    aux = atual->data();
    delete atual;
    size_--;
    return aux;
    } else {
        throw std::out_of_range("Índice fora dos limites.");
    }
}

template<typename T>
T structures::DoublyCircularList<T>::pop_front() {
    if (empty()) {
    throw std::out_of_range("Lista vazia");
    }
    Node *inicio;
    inicio = head->next();
    head->next(inicio->next());
    (inicio->next())->prev(head);
    T aux = inicio->data();
    delete inicio;
    size_--;
    return aux;
}

template<typename T>
T structures::DoublyCircularList<T>::pop_back() {
    if (empty()) {
    throw std::out_of_range("Lista vazia");
    }
    Node *ultimo = head->prev();
    T aux;
    (ultimo->prev())->next(head);  // faz o penultimo apontar para o head
    head->prev(ultimo->prev());  // faz a sentinela apontar para o penultimo
    aux = ultimo->data();
    delete ultimo;
    size_--;
    return aux;
}

template<typename T>
bool structures::DoublyCircularList<T>::empty() const {
	return size() == 0;
}

template<typename T>
bool structures::DoublyCircularList<T>::contains(const T& data) const {
	Node *p = head;
	for (size_t i = 0; i < size_; i++) {
		if (p->data() == data) {
			return true;
		}
		p = p->next();
	}
	return false;
}
template<typename T>
T& structures::DoublyCircularList<T>::at(std::size_t index) {
	if (index < size_) {
		Node *p = posicao(index);
		return p -> data();
	}
	throw std::out_of_range("Índice inexistente.");
}

template<typename T>
const T& structures::DoublyCircularList<T>::at(std::size_t index) const {
	if (index < size_) {
		Node *p = posicao(index);
		return p -> data();
	}
	throw std::out_of_range("Índice inexistente.");
}
template<typename T>
std::size_t structures::DoublyCircularList<T>::find(const T& data) const {
    if (empty()) {
	throw std::out_of_range("lista vazia !");
    }
	Node *p = head->next();
	for (size_t i = 0; i < size_; i++) {
		if (p->data() == data) {
			return i;
		}
		p = p->next();
	}
	return size();
}

template<typename T>
std::size_t structures::DoublyCircularList<T>::size() const {
	return size_;
}
