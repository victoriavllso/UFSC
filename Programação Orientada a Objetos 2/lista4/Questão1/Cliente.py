'''[1] Implemente um sistema de cadastro de clientes utilizando o padrão MVC (Model, View, Controller). O
sistema deve executar as seguintes funcionalidades:
• Cadastro de novos usuários.
• Consulta de usuários cadastrados por nome ou por código.
• Remoção de cadastros.
• Listagem de todos os clientes cadastrados.
• Gravação e leitura de arquivos (camada de persistência).
Siga as heurísticas de usabilidade e informe seu usuário quando algo inesperado ocorrer (prevenindo possíveis erros).
'''
from lista4.Questão1.Pessoa import Pessoa

class Cliente(Pessoa):
    def __init__(self, nome, codigo):
        super().__init__(nome)
        self.__codigo = codigo

    @property
    def codigo(self):
        return self.__codigo
    
    @codigo.setter
    def codigo(self,codigo):
        self.__codigo= codigo

    def __str__(self) -> str:
        return f'Código: {self.codigo} Nome:{self.nome}'
        