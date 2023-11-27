from ClienteView import ClienteView
from Cliente import Cliente
import PySimpleGUI as sg
from ClienteDAO import ClienteDAO

class ClienteController:
    def __init__(self):
        self.__telaCliente = ClienteView(self)
        self.__clientes = {}  # lista de objetos Cliente
        self.__clienteDAO = ClienteDAO()



    def inicia(self):
        self.__telaCliente.tela_consulta()

        # Loop de eventos
        rodando = True
        resultado = ''
        while rodando:
            event, values = self.__telaCliente.le_eventos()

            if event == sg.WIN_CLOSED:
                rodando = False

            elif event == 'Cadastrar':
                # FIX ME - implementar lógica de cadastro
            
                try:
                    codigo = int(values['codigo']) 
                    nome = values['nome']
                    self.adiciona_cliente(codigo, nome)
                    resultado = 'Cliente cadastrado'

                except ValueError: #se a conver~soa de código falhar capturamos ValueError
                        resultado = 'Código deve ser um número inteiro'

            elif event == 'Consultar':
                # FIX ME - implementar lógica de consulta
            
                if values['codigo'] != '':
                    codigo = int(values['codigo'])

                    try:
                        resultado = self.busca_codigo(codigo)
                
                    except:
                        resultado = 'Não encontrado'

                elif values['nome'] != '':
                    try:
                        resultado = self.busca_nome(values['nome'])
                    except:
                        resultado = 'Não encontrado'

            if resultado != '':
                dados = str(resultado)
                self.__telaCliente.mostra_resultado(dados)

        self.__telaCliente.fim()



    # cria novo OBJ cliente e adiciona ao dict
    def adiciona_cliente(self, codigo, nome):
        cliente = Cliente(codigo, nome)
        self.__clienteDAO.add(cliente)

    def busca_codigo(self, codigo):
        try:
            return self.__clienteDAO.get(codigo)
        except KeyError:
            raise KeyError

    
    def busca_nome(self, nome):
        for cliente in self.__clienteDAO.get_all():
            if cliente.nome == nome:
                return cliente

        raise LookupError


