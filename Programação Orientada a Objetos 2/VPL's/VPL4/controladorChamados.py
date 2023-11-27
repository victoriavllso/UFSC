from abstractControladorChamados import AbstractControladorChamados
from tipoChamado import TipoChamado
from chamado import Chamado
from datetime import date as Date
from cliente import Cliente
from tecnico import Tecnico
from collections import defaultdict



class ControladorChamados(AbstractControladorChamados):
    def __init__(self):
        super().__init__()
        self.__chamados = []
        self.__tipoChamados = []

    @property
    def chamados(self):
        return self.__chamados

    @property
    def tipoChamados(self):
        return self.__tipoChamados


    def totalChamadosPorTipo(self, tipo: TipoChamado) -> int:
            total = 0
            for chamado in self.chamados:
                if chamado.tipo.codigo == tipo.codigo: 
                    total+=1
    
            return total
    
    def incluiChamado(self, data: Date, cliente: Cliente, tecnico: Tecnico, titulo: str, descricao: str, prioridade: int, tipo: TipoChamado) -> Chamado:
        if isinstance(data, Date) and isinstance(cliente,Cliente) and isinstance(tecnico,Tecnico) and isinstance(tipo,TipoChamado):
            for chamado in self.chamados:
                if chamado.data == data and chamado.cliente == cliente and chamado.tecnico == tecnico and chamado.tipo == tipo:
                    return None
            chamado = Chamado(data,cliente,tecnico,titulo,descricao,prioridade,tipo)
            self.chamados.append(chamado)
            return chamado

    def incluiTipoChamado(self, codigo: int, nome: str, descricao: str) -> TipoChamado:
        for tipochamado in self.tipoChamados:
            if tipochamado.codigo == codigo:
                return None
               
        tipo = TipoChamado(codigo,descricao,nome)
        self.tipoChamados.append(tipo)
        return tipo
        
