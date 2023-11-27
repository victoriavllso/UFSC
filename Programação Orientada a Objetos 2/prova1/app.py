from Amigo import Amigo
from Emprestimo import Emprestimo
from Livro import Livro
from BibliotecaPessoal import BibliotecaPessoal



# Crie os objetos Livro
livro1 = Livro("Dom Casmurro", "Capitu traiu ou não traiu?", "Machado de Assis", "Bentinho", "Romance", "15 anos")
livro2 = Livro("Peter Pan", "Um menino gente boa ou não", "LL", "Peter Pan", "Infantil", "10 anos")
livro3 = Livro("1984", "Big Brother está te observando", "George Orwell", "Winston Smith", "Ficção", "20 anos")
livro4 = Livro("A Guerra dos Tronos", "Inverno está chegando", "George R. R. Martin", "Jon Snow", "Fantasia", "18 anos")


# Crie os objetos Amigo
amigo1 = Amigo("Luana", "4799687-5052", "luana.ff@gmail.com")
amigo2 = Amigo("Pedro", "4799888-1234", "pedro@gmail.com")
amigo3 = Amigo("Maria", "4799777-5678", "maria@gmail.com")

# Crie a Biblioteca Pessoal
biblioteca = BibliotecaPessoal()

biblioteca.adiciona_amigo(amigo1)
biblioteca.adiciona_amigo(amigo2)
biblioteca.adiciona_amigo(amigo3)

#Registre o empréstimo de um livro ao primeiro amigo
biblioteca.empresta_livro(amigo1,livro1,"19/04/23")

#Mostre os livros emprestados
biblioteca.ver_livros_emprestados()

#Registre dois empréstimos de outros livros ao segundo amigo
biblioteca.empresta_livro(amigo2,livro2,"20/05/2023")
biblioteca.empresta_livro(amigo2,livro3,"20/05/2023")
biblioteca.empresta_livro(amigo2,livro4,"20/05/2023")

#Mostre os livros emprestados
biblioteca.ver_livros_emprestados()

#Registre a devolução do livro do primeiro empréstimo
biblioteca.devolve_livro(livro1)

# Mostre os livros emprestados

biblioteca.ver_livros_emprestados()
