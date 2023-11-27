from abstractControladorElevador import AbstractControladorElevador
from comandoInvalidoException import ComandoInvalidoException
from elevador import Elevador

class ControladorElevador(AbstractControladorElevador):

    def __init__(self):
        super().__init__()
        self.__elevador = None

    '''
    Faz o elevador subir um andar. Se já estiver no último andar, dispara exceção
    @return Mensagem informando o que ocorreu com o elevador 
    @throws ElevadorJahNoUltimoAndarException 
    '''
    def subir(self) -> str:
        self.elevador.subir()
    
    '''
    Faz o elevador descer um andar. Se já estiver no térreo, dispara exceção
    @return Mensagem informando o que ocorreu com o elevador
    @throws ElevadorJahNoTerreoException
    '''
    def descer(self) -> str:
        self.elevador.descer()

    '''
    Entra uma pessoa no Elevador. Se não for possível permitir a entrada da pessoa, dispara exceção
    @return Mensagem informando o que ocorreu com o elevador
    @throws ElevadorCheioException
    '''

    def entraPessoa(self) -> str:
        self.elevador.entraPessoa()
	
    '''
    Sai uma pessoa no Elevador. Se não for possível permitir a saída de uma pessoa, dispara exceção
    @return Mensagem informando o que ocorreu com o elevador
    @throws ElevadorJahVazioException
    '''
   
    def saiPessoa(self) -> str:
        self.elevador.saiPessoa()
	
    '''
    @return Elevador
    '''
    @property
    def elevador(self) -> Elevador:
        return self.__elevador
        
    @elevador.setter
    def elevador(self,elevador):
        self.__elevador = elevador

    '''
    @param andarAtual andar atual do elevador
    @param totalAndaresPredio total de andares do prédio
    @param capacidade capacidade máxima do elevador
    @param totalPessoas total de pessoas atual do elevador
    '''

    def inicializarElevador(self, andarAtual: int, totalAndaresPredio: int, capacidade: int, totalPessoas: int):
            if (type(andarAtual) == type(totalAndaresPredio) == type(capacidade)== type(totalPessoas)==int) and (0 <= andarAtual <= totalAndaresPredio -1) and (0<= totalPessoas <= capacidade):
                 self.elevador = Elevador(capacidade,totalPessoas,totalAndaresPredio,andarAtual)
            else:
                 raise ComandoInvalidoException
        

