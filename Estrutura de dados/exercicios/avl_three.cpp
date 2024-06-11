// Copyright [2024] <Victória Rodrigues Veloso>

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

        void pre_order(ArrayList<T>& v) const {
            // COLOQUE SEU CÓDIGO AQUI...
            v.push_back(data);
            if (left != nullptr) {
                left->pre_order(v);
            }
            if (right != nullptr) {
                right->pre_order(v);
            }
        }

        void in_order(ArrayList<T>& v) const {
            // COLOQUE SEU CÓDIGO AQUI...
            if (left != nullptr) {
                left->in_order(v);
            }
            v.push_back(data);
            if (right != nullptr) {
                right->in_order(v);
            }
        }

        void post_order(ArrayList<T>& v) const {
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
        if (root == nullptr) {
            return;
        }

        Node* current = root;
        Node* parent = nullptr;

        while (current != nullptr && current->data != data) {
            parent = current;
            if (data < current->data) {
                current = current->left;
            } else {
                current = current->right;
            }
        }

        if (current == nullptr) {
            return;
        }

        // Caso 1: Node não tem filhos
        if (current->left == nullptr && current->right == nullptr) {
            if (current == root) {
                root = nullptr;
            } else if (current == parent->left) {
                parent->left = nullptr;
            } else {
                parent->right = nullptr;
            }
            delete current;
        } else if (current->left == nullptr) {
            // Caso 2: Node tem apenas 1 filho
            if (current == root) {
                root = current->right;
            } else if (current == parent->left) {
                parent->left = current->right;
            } else {
                parent->right = current->right;
            }
            delete current;
        } else if (current->right == nullptr) {
            if (current == root) {
                root = current->left;
            } else if (current == parent->left) {
                parent->left = current->left;
            } else {
                parent->right = current->left;
            }
            delete current;
        } else {  // Case 3: Node tem 2 filhos
            Node* successor = current->right;
            Node* successorParent = current;

            while (successor->left != nullptr) {
                successorParent = successor;
                successor = successor->left;
            }

            current->data = successor->data;

            if (successor == successorParent->left) {
                successorParent->left = successor->right;
            } else {
                successorParent->right = successor->right;
            }

            delete successor;
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
