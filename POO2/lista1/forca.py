'''neste jogo, você deve inserir uma palavra e seu colega deve adivinhar qual é. A dica para saber qual é a palavra, é que o numero de chances é igual ao tamanho da palavra'''


import os

class Jogo():

    def __init__(self):
        self.chute = ''

    def msg_inicio(self):
        print("="*6 + " Bem vindo ao jogo da forca !!!! " + "="*6)

    def obter_palavra(self):
        palavra = input("\nQual será a tua palavra secreta ? Não conte ao seu amigo: ")
        os.system('cls')
        palavra = list(palavra)
        secreta = ['_']*len(palavra)

        print(f"Sua palavra secreta é: {' '.join(secreta)}")

        return palavra, secreta

    def realizar_chute(self,palavra, secreta):
        
        venceu = False
        chances = len(palavra)

        while chances >0:
            chute_correto = False
            self.chute = input("Qual letra ?: ")

            for i, letra in enumerate(palavra):
                if self.chute == palavra[i]:
                    secreta[i] = self.chute
                    chute_correto = True
            if not chute_correto:
                chances -=1
            print(' '.join(secreta))
            print(f"Você ainda tem {chances} chances")
            if '_' not in secreta:
                venceu = True
                break
     
        if not venceu:
            print("Que pena, você perdeu")
        else:
            print("Parabéns, você ganhou!")
            print("       ___________      ")
            print("      '._==_==_=_.'     ")
            print("      .-\\:      /-.    ")
            print("     | (|:.     |) |    ")
            print("      '-|:.     |-'     ")
            print("        \\::.    /      ")
            print("         '::. .'        ")
            print("           ) (          ")
            print("         _.' '._        ")
            print("        '-------'       ")

      



jogo = Jogo()
jogo.msg_inicio()
palavra, secreta = jogo.obter_palavra()
jogo.realizar_chute(palavra,secreta)
