#include <stdexcept>  // C++ exceptions

namespace structures {

template<typename T>
//! Classe DoublyLinkedList
class DoublyLinkedList {
 public:
    DoublyLinkedList();
    ~DoublyLinkedList();
    //! metodo limpar dados
    void clear();
    //! metodo inserir no fim
    void push_back(const T& data);  // insere no fim
    //! metodo inserir no inicio
    void push_front(const T& data);  // insere no início
    //! metodo inserir no indice
    void insert(const T& data, std::size_t index);  // insere na posição
    //! metodo inserir ordenado
    void insert_sorted(const T& data);  // insere em ordem
    //! metodo remover indice
    T pop(std::size_t index);  // retira da posição
    //! metodo remover fim
    T pop_back();  // retira do fim
    //! metodo remover inicio
    T pop_front();  // retira do início
    //! metodo remover todos que contem
    void remove(const T& data);  // retira específico
    //! metodo esta vazio
    bool empty() const;  // lista vazia
    //! metodo contem
    bool contains(const T& data) const;  // contém
    //! metodo retornar no indice
    T& at(std::size_t index);  // acesso a um elemento (checando limites)
    //! metodo retornar no indice
    const T& at(std::size_t index) const;  // getter constante a um elemento
    //! metodo encontrar dado
    std::size_t find(const T& data) const;  // posição de um dado
    //! metodo retornar tamanho
    std::size_t size() const;  // tamanho

 private:
    class Node {
     public:
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
        //! metodo retornar dado
        T& data() {  // getter: dado
            return data_;
        }
        //! metodo retornar dado
        const T& data() const {  // getter const: dado
            return data_;
        }
        //! metodo retornar anterior
        Node* prev() {  // getter: próximo
            return prev_;
        }
        //! metodo retornar anterior
        const Node* prev() const {  // getter const: próximo
            return prev_;
        }
        //! metodo informar anterior
        void prev(Node* node) {  // setter: próximo
            prev_ = node;
        }
        //! metodo retornar proximo
        Node* next() {  // getter: próximo
            return next_;
        }
        //! metodo retornar proximo
        const Node* next() const {  // getter const: próximo
            return next_;
        }
        //! metodo informar proximo
        void next(Node* node) {  // setter: próximo
            next_ = node;
        }

     private:
        T data_;
        Node* prev_;
        Node* next_;
    };

    //! posicionamento do ponteiro pelo caminho mais curto
    Node *posicao(std::size_t index) {
        Node *p;
        if (index < size()/2) {  // do início para o fim
            p = head;
            for (std::size_t i = 0; i < index; i++) {
                p = p->next();
            }
        } else {  // do fim para o início
            p = tail;
            for (std::size_t i = size()-1; i > index; i--) {
                p = p->prev();
            }
        }
        return p;
    }

    //! ponteiro de inicio
    Node* head;  // primeiro da lista
    //! ponteiro de fim
    Node* tail;  // ultimo da lista
    //! tamanho
    std::size_t size_;
};

}  // namespace structures

template<typename T>
structures::DoublyLinkedList<T>::DoublyLinkedList() {
	head = nullptr;
	tail = nullptr;
	size_ = 0;
}

template<typename T>
structures::DoublyLinkedList<T>::~DoublyLinkedList() {
	clear();
}

template<typename T>
void structures::DoublyLinkedList<T>::clear() {
	while (!empty()) {
		pop_front();
	}
}

template<typename T>
void structures::DoublyLinkedList<T>::push_back(const T& data) {
	Node *p = new Node(data);
	if (p != nullptr) {
		if (empty()) { //se estiver vazia, tail e head apontam para o mesmo nó
			tail = p;
			head = p;
			p->next(nullptr);
			p->prev(nullptr);
		} else {
			tail->next(p);
			p->prev(tail);
			tail = p;
		}
		size_++;
	} else {
	    throw std::out_of_range("memória insuficiente");
	}
}

template<typename T>
void structures::DoublyLinkedList<T>::push_front(const T& data) {
	Node *p = new Node(data);
	if (p != nullptr) {
		if (empty()) {
			tail = p;
			head = p;
			p->next(nullptr);
			p->prev(nullptr);
		} else {
			p->next(head);
			head->prev(p);
			head = p;
		}
		size_++;
	} else {
	    throw std::out_of_range("memória insuficiente");
	}
}

template<typename T>
void structures::DoublyLinkedList<T>::insert(const T& data, std::size_t index) {
	/*

	COLOQUE SEU CÓDIGO AQUI...

	*/

	if(index == 0) {
	    return push_front(data);
	}
	if(index ==size()-1) {
	    return push_back(data);
	}
	if (index >= size()) {
	    throw std::out_of_range("Indice invalido");
	}
    Node *anterior, *p;
	Node* novo = new Node(data);
	p = posicao(index);
	anterior = p->prev();
	novo->prev(anterior);
	novo->next(p);
	anterior->next(novo);
	p->prev(novo);
	size_++;
}

template<typename T>
void structures::DoublyLinkedList<T>::insert_sorted(const T& data) {
	/*

	COLOQUE SEU CÓDIGO AQUI...

	*/
	if(empty()) {
	    return push_front(data);
	}
	Node* p;
	p = head;
	while(p != nullptr && p->data() < data) {
	    p = p->next();
	}
	if(p == nullptr) {
	    return push_back(data);
	}
	if(p->prev() == nullptr) {
	    return push_front(data);
	}
	Node *novo = new Node(data);
	Node *anterior;
	anterior = p->prev();
	novo->prev(anterior);
	novo->next(p);
	anterior->next(novo);
	p->prev(novo);
	size_++;
}

template<typename T>
T structures::DoublyLinkedList<T>::pop(std::size_t index) {
	/*

	COLOQUE SEU CÓDIGO AQUI...

	*/
	if(index == 0) {
	    return pop_front();
	}
	if(index ==size()-1) {
	    return pop_back();
	}
	if (index >= size()) {
	    throw std::out_of_range("Indice invalido");
	}
	if (empty()) {
	    throw std::out_of_range("Lista vazia !");
	}
	Node *p, *anterior;
	T aux;
	p = posicao(index);
	anterior = p->prev();
	anterior->next(p->next());
	p->next()->prev(anterior);
	aux = p->data();
	delete p;
	size_--;
	return aux;
}
template<typename T>
T structures::DoublyLinkedList<T>::pop_back() {
	/*

	COLOQUE SEU CÓDIGO AQUI...

	*/
	if (empty()) {
	    throw std::out_of_range("Lista vazia !");
	}
	Node *p, *anterior;
	p = tail;
	anterior = p->prev();
	if(anterior ==nullptr) {
	    head = nullptr;
	} else {
	    anterior->next(nullptr);
	}
    tail = anterior;
	T aux;
	aux = p->data();
	delete p;
	size_--;
	return aux;
}

template<typename T>
T structures::DoublyLinkedList<T>::pop_front() {
    if (empty()) {
        throw std::out_of_range("Lista vazia !");
    }
    if (head != nullptr) {
        head->prev(nullptr);
    } else {
        tail = nullptr;
    }
    Node* p = head;
    T aux = p->data();
    head = p->next();
    delete p;
    size_--;
    return aux;
}

template<typename T>
void structures::DoublyLinkedList<T>::remove(const T& data) {
	Node *p = head;
	while (p != nullptr && p->data() != data) {
	    p = p->next();
	}
	if (p != nullptr) {
	    if (p->prev() == nullptr) {
	        pop_front();
	    } else {
    	    Node *ant = p->prev();
    	    ant->next(p->next());
    	    delete p;
    	    size_--;
	    }
	}
}

template<typename T>
bool structures::DoublyLinkedList<T>::empty() const {
	return size() == 0;
}

template<typename T>
bool structures::DoublyLinkedList<T>::contains(const T& data) const {
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
T& structures::DoublyLinkedList<T>::at(std::size_t index) {
	if (index < size_) {
		Node *p = posicao(index);
		return p->data();
	}
	throw std::out_of_range("indice inexistente");
}

template<typename T>
const T& structures::DoublyLinkedList<T>::at(std::size_t index) const {
	if (index < size_) {
		Node *p = posicao(index);
		return p->data();
	}
	throw std::out_of_range("indice inexistente");
}

template<typename T>
std::size_t structures::DoublyLinkedList<T>::find(const T& data) const {
	Node *p = head;
	for (size_t i = 0; i < size_; i++) {
		if (p->data() == data) {
			return i;
		}
		p = p->next();
	}
	return size();
}

template<typename T>
std::size_t structures::DoublyLinkedList<T>::size() const {
	return size_;
}