'''[1] Implemente um sistema de cadastro de clientes utilizando o padrão MVC (Model, View, Controller). O
sistema deve executar as seguintes funcionalidades:
• Cadastro de novos usuários.
• Consulta de usuários cadastrados por nome ou por código.
• Remoção de cadastros.
• Listagem de todos os clientes cadastrados.
• Gravação e leitura de arquivos (camada de persistência).
Siga as heurísticas de usabilidade e informe seu usuário quando algo inesperado ocorrer (prevenindo possíveis erros).
'''

from lista4.Questão1.ClienteDAO import ClienteDAO
from lista4.Questão1.Cliente import Cliente

class ClienteController:
    def __init__(self) -> None:
        self.__clientedao = ClienteDAO()


    def adiciona(self, nome, codigo):
        cliente = Cliente(nome, codigo)
        self.__clientedao.add(cliente)

    def remove(self,codigo):
        self.__clientedao.remove(codigo)

    def busca_codigo(self,codigo):
        busca = self.__clientedao.get(codigo)
        print(f'Nome: {cliente.nome}, Código: {cliente.codigo}')
    
    def busca_nome(self, nome):
        lista_clientes = list(self.__clientedao.get_all())
        for cliente in lista_clientes:
            if cliente.nome == nome:
                print(f'Nome: {cliente.nome}, Código: {cliente.codigo}')
                
            
    def listagem(self):
        listagem = list(self.__clientedao.get_all())
        for cliente in listagem:
            print(f'Nome: {cliente.nome}, Código: {cliente.codigo}')
        return listagem

     

    def inicia(self):
        running = True

        while running:

            print("\n1 - Cadastrar cliente")
            print("2 - Remover cliente")
            print("3 - Consultar cliente")
            print("4 - Listagem dos cadastros")
            print("5 - Sair")

            opcao = int(input( "Digite a opção desejada: "))

            if opcao == 1:
                nome = str(input("Digite o nome que será cadastrado: "))
                codigo = int(input("Digite o código que será cadastrado: "))
                self.adiciona(nome, codigo)
                print("cadastro efetuado")

            elif opcao == 2:
                codigo = int(input("Digite o código do cliente que quer remover: "))
                self.remove(codigo)
                print('Cliente removido')

            elif opcao == 3:
                tipo = input("Deseja consultar por nome (digite 'n') ou por código (digite 'c') ? ")
                if tipo.lower() == 'c':
                    try:
                        codigo = int(input("Digite o código para consulta: "))
                        self.busca_codigo(codigo)
                    except:
                        print('Código não encontrado')
                if tipo.lower() == 'n':
                    try:
                        nome = str(input( "Digite o nome para consulta: "))
                        self.busca_nome(nome)

                    except:
                        print('Nome não encontrado')

            elif opcao == 4:
                self.listagem()

            elif opcao == 5:
                running = False
            else:
                print("Opção inválida")

  
    