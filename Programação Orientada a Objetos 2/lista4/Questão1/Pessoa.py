'''[1] Implemente um sistema de cadastro de clientes utilizando o padrão MVC (Model, View, Controller). O
sistema deve executar as seguintes funcionalidades:
• Cadastro de novos usuários.
• Consulta de usuários cadastrados por nome ou por código.
• Remoção de cadastros.
• Listagem de todos os clientes cadastrados.
• Gravação e leitura de arquivos (camada de persistência).
Siga as heurísticas de usabilidade e informe seu usuário quando algo inesperado ocorrer (prevenindo possíveis erros).
'''
class Pessoa:
    def __init__(self, nome):
        self.__nome = nome

    @property
    def nome(self):
        return self.__nome
    
    @nome.setter
    def nome(self, nome):
        self.__nome = nome

    def __str__(self) -> str:
        return nome
