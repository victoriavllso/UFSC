from interfaces.AbstractControladorJogo import *
import random
from Personagem import Personagem
from Jogador import Jogador
from Mesa import Mesa

class ControladorJogo(AbstractControladorJogo):
    def __init__(self):
        self.__baralho = []
        self.__personagens = []

    '''
    Retorna o baralho
    @return o baralho
    '''
    @property
    def baralho(self) -> list:
        return self.__baralho

    '''
    Retorna a lista de personagems
    @return a lista de personagems
    '''
    @property
    def personagens(self) -> list:
        return self.__personagens

    '''
    Permite incluir um novo Personagem na lista de personagens do jogo
    @param energia Energia do novo Personagem
    @param habilidade Habilidade do novo Personagem
    @param velocidade Velocidade do novo Personagem
    @param resistencia Resistencia do novo Personagem
    @param tipo TipoPersonagem (Enum) do novo Personagem.
    Deve ser utilizado TipoPersonagem.TIPO
    @return Retorna o Personagem incluido na lista
    '''
    def inclui_personagem_na_lista(self,
                                   energia: int,
                                   habilidade: int,
                                   velocidade: int,
                                   resistencia: int,
                                   tipo: Tipo) -> Personagem: #tipo está sento importado de abstract personagem
        if isinstance(tipo, Tipo):
            personagem = Personagem(energia,habilidade,velocidade,resistencia,tipo)
            self.personagens.append(personagem)
            return personagem

    '''
     Permite incluir uma nova Carta no baralho do jogo
     @param personagem Personagem da nova carta que sera incluida
     @return Retorna a Carta que foi incluida no baralho
     '''
    def inclui_carta_no_baralho(self, personagem: Personagem) -> Carta:
        if isinstance(personagem, Personagem):
            carta = Personagem(personagem.energia,personagem.habilidade,personagem.velocidade,personagem.resistencia,personagem.tipo)
            self.baralho.append(carta)
            return carta
        

    '''
    Inicia o jogo, distribuindo aleatoriamente 5 cartas do baralho
    para cada jogador, a distribuicao nao precisa ser aleatoria

    @param jogador1 Jogador 1
    @param jogador2 Jogador 2
    '''
    def iniciaJogo(self, jogador1: Jogador, jogador2: Jogador):
        if isinstance(jogador1, Jogador) and isinstance(jogador2, Jogador):
            random.shuffle(self.baralho) #embaralhar as cartas
            jogador1 = self.baralho[:5]
            jogador2 = self.baralho[5:10]

    '''
     Realiza uma jogada, ou seja:
     1. Recebe a mesa onde estao as cartas lancadas pelo Jogador 1
     e pelo Jogador 2
     2. Compara os valores totais das cartas dos jogadores que estao
     na mesa
     3. Apos comparacao:

     O jogador que ganhar a rodada recebe a carta do jogador perdedor
     sendo assim ele deve chamar o metodo inclui_carta_na_mao para as
     duas cartas que estao na mesa

     Caso ocorra empate ambos os jogadores devem chamar o metodo
     inclui_carta_na_mao com suas respectivas cartas da mesa

     4.Ao final do metodo o jogador que estiver com a mao vazia
     perde o jogo, caso ambos ainda tenham cartas na mao retorne
     None para indicar que por enquanto ninguem venceu o jogo.

     @param mesa Mesa atual, contendo: Jogador 1, Jogador 2,
     Carta do Jogador 1 e Carta do Jogador 2
     @return Retorna o Jogador vencedor da rodada.
     Caso ocorra empate entre os jogadores, retorna None
     '''
    def jogada(self, mesa: Mesa) -> Jogador:
        if isinstance(mesa, Mesa):
            jogador1 = Jogador(mesa.jogador1)
            jogador2 = Jogador(mesa.jogador2)
            if mesa.carta_jogador1.valor_total_carta() > mesa.carta_jogador2.valor_total_carta():
                jogador1.inclui_carta_na_mao(mesa.carta_jogador1)
                jogador1.inclui_carta_na_mao(mesa.carta_jogador2)
                return jogador1
            elif mesa.carta_jogador1.valor_total_carta() < mesa.carta_jogador2.valor_total_carta():
                jogador2.inclui_carta_na_mao(mesa.carta_jogador1)
                jogador2.inclui_carta_na_mao(mesa.carta_jogador2)
                return jogador2
            else:
                jogador1.inclui_carta_na_mao(mesa.carta_jogador1)
                jogador2.inclui_carta_na_mao(mesa.carta_jogador2)

            if len(mesa.carta_jogador1) ==0:
                return jogador1
            elif len(mesa.carta_jogador2)==0:
                return jogador2
            else:
                return None




# Crie instâncias de jogadores
jogador1 = Jogador("Jogador 1")
jogador2 = Jogador("Jogador 2")

# Crie instância do controlador de jogo
controlador_jogo = ControladorJogo()

# Adicione personagens à lista de personagens do jogo
personagem1 = controlador_jogo.inclui_personagem_na_lista(100, 50, 60, 70, Tipo.agua)
personagem2 = controlador_jogo.inclui_personagem_na_lista(90, 70, 40, 80, Tipo.ar)

# Adicione cartas ao baralho
carta1 = controlador_jogo.inclui_carta_no_baralho(personagem1)
carta2 = controlador_jogo.inclui_carta_no_baralho(personagem2)

# Inicie o jogo, distribuindo cartas para os jogadores
controlador_jogo.iniciaJogo(jogador1, jogador2)

# Verifique se as mãos dos jogadores estão vazias antes de acessar as cartas
if jogador1.mao and jogador2.mao:
    carta_jogador1 = jogador1.mao[0]
    carta_jogador2 = jogador2.mao[0]
    mesa = Mesa(jogador1, jogador2, carta_jogador1, carta_jogador2)
else:
    print("Os jogadores não têm cartas em suas mãos.")

# Realize uma jogada
vencedor = controlador_jogo.jogada(Mesa)

if vencedor is not None:
    print(f"O jogador {vencedor.nome} venceu a rodada!")
else:
    print("A rodada terminou em empate.")

# Verifique o estado dos jogadores após a jogada
print(f"Mão do Jogador 1: {[carta.nome for carta in jogador1.mao]}")
print(f"Mão do Jogador 2: {[carta.nome for carta in jogador2.mao]}")
