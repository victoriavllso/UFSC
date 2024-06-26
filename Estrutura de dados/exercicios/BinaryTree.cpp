#include "array_list.h"

namespace structures {

template<typename T>
class BinaryTree {
public:
    BinaryTree();

    ~BinaryTree();

    void insert(const T& data);

    void remove(const T& data);

    bool contains(const T& data) const;

    bool empty() const;

    std::size_t size() const;

    ArrayList<T> pre_order() const;

    ArrayList<T> in_order() const;

    ArrayList<T> post_order() const;

private:
    struct Node {
        explicit Node(const T& data_) {
            data = data_;
            left = nullptr;
            right = nullptr;
        }

        T data;
        Node* left;
        Node* right;

        void insert(const T& data_) {
            // COLOQUE SEU CÓDIGO AQUI... SE IMPLEMENTAÇÃO RECURSIVA
            if (data_ < data) {
                if (left == nullptr) {
                    left = new Node(data_);
                } else {
                    left->insert(data_);
                }
            } else {
                if (right == nullptr) {
                    right = new Node(data_);
                } else {
                    right->insert(data_);
                }
            }
        }
        Node *sucessor(Node *remover) {
            Node *sucessor = remover->right;
            while (sucessor -> left != nullptr) {
                sucessor = sucessor ->left;
            }
            return sucessor;
        }

        bool remove(const T& data_) {
            // COLOQUE SEU CÓDIGO AQUI... SE IMPLEMENTAÇÃO RECURSIVA
        
            if (data_ < data) {
                if (left != nullptr) {
                    return left->remove(data_);
                } else {
                    return false;
                }
            } else if (data_ > data) {
                if (right !=nullptr) {
                    return right->remove(data_);
                } else {
                    return false;
                }
            } else {
                Node *filho = nullptr;
                if (left == nullptr && right == nullptr) { //nó sem filhos
                    delete this;  // isso funciona ? 
                } else if (left == nullptr || right == nullptr) { // nó com filho a esquerda ou a direita
                    filho = left != nullptr ? left : right;
                    data = filho->data;
                    left = nullptr;
                    right = nullptr;
                    delete filho;

                } else {
                    Node *suce = sucessor(this);
                    data = suce->data;
                    right->remove(suce->data);
                }
                return true;
            }
        }

        bool contains(const T& data_) const {
            if (data_ == data) {
                return true;
            } else if (data_ < data) {
                if (left != nullptr) {
                    return left->contains(data_);
                } else {
                    return false;
                }
            } else {  // data_ > data
                if (right != nullptr) {
                    return right->contains(data_);
                } else {
                    return false;
                }
            }
        }
        void pre_order(ArrayList<T>& v) const { //inicia a pesquisa pela raiz
            // COLOQUE SEU CÓDIGO AQUI...
            v.push_back(data);
            if (left != nullptr) {
                left->pre_order(v);
            }
            if (right != nullptr) {
                right->pre_order(v);
            }
        }

        void in_order(ArrayList<T>& v) const { // inicia a pesquisa pela esquerda
            // COLOQUE SEU CÓDIGO AQUI...
            if (left != nullptr) {
                left->in_order(v);
            }
            v.push_back(data);
            if (right != nullptr) {
                right->in_order(v);
            }
        }

        void post_order(ArrayList<T>& v) const { // inicia a pesquisa pela direita
            // COLOQUE SEU CÓDIGO AQUI...
            if (left != nullptr) {
                left->post_order(v);
            }
            if (right != nullptr) {
                right->post_order(v);
            }
            v.push_back(data);
        }
    };

    Node* root;
    std::size_t size_;
};

}  // namespace structures

//-------------------------------------

template<typename T>
structures::BinaryTree<T>::BinaryTree() {
    root = nullptr;
    size_ = 0;
}

template<typename T>
structures::BinaryTree<T>::~BinaryTree() {
    // COLOQUE SEU CÓDIGO AQUI...
    root = nullptr;
    size_ = 0;
}

template<typename T>
bool structures::BinaryTree<T>::contains(const T& data) const {
    if (root != nullptr) {
        return root->contains(data);
    } else {
        return false;
    }
}

template<typename T>
void structures::BinaryTree<T>::insert(const T& data) {
    // COLOQUE SEU CÓDIGO AQUI...
    Node *novo = new Node(data);
    if (root == nullptr) {
        root = novo;
    } else {
        root->insert(data);
    }
    size_++;
}

template<typename T>
void structures::BinaryTree<T>::remove(const T& data) {
    // COLOQUE SEU CÓDIGO AQUI...
    if (root != nullptr) {
        root->remove(data);
    }
    size_--;
}

template<typename T>
bool structures::BinaryTree<T>::empty() const {
    return size() == 0;
}

template<typename T>
std::size_t structures::BinaryTree<T>::size() const {
    // COLOQUE SEU CÓDIGO AQUI...
    return size_;
}

template<typename T>
structures::ArrayList<T> structures::BinaryTree<T>::pre_order() const {
    structures::ArrayList<T> L;
	if (root != nullptr) {
		root->pre_order(L);
	}
	return L;
}

template<typename T>
structures::ArrayList<T> structures::BinaryTree<T>::in_order() const {
    // COLOQUE SEU CÓDIGO AQUI...
    structures::ArrayList<T> L;
    if (root != nullptr) {
        root->in_order(L);
    }
    return L;
}

template<typename T>
structures::ArrayList<T> structures::BinaryTree<T>::post_order() const {
    // COLOQUE SEU CÓDIGO AQUI...
    structures::ArrayList<T> L;
    if (root != nullptr) {
        root->post_order(L);
    }
    return L;
}
