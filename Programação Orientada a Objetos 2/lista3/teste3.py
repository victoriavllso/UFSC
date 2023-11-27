class Agenda():
    def __init__(self):
        self.dic = {}
    
    def incluir_novo_nome(self,nome,telefones):
        self.nome = nome
        self.dic[self.nome] = telefones
        return self.dic

    def incluir_telefone(self):
        nome = input("Para qual nome você deseja incluir um novo número ? ").lower()
        if nome in self.dic.keys():
                novo_numero = input(f"Digite o número que deseja incluir para {nome}: ")
                telefones = self.dic.get(nome,"").split(', ') #obter os  números já existentes
                telefones.append(novo_numero)
                self.dic[nome] = ', '.join(telefones)
        else:
            controle = input("Nome não cadastrado. Deseja incluí-lo ? Responda 'S' ou 'N': ").lower()
            if controle == 's':
                novo_nome = input("Qual nome irá inserir ? ")
                novo_tel = ("Qual o telefone da nova inclusão ? ")
                self.incluir_novo_nome(novo_nome, novo_tel)
         

    def excluir_telefone(self):
        nome = input("De qual nome deseja excluir um número? ").lower()
        if nome in self.dic.keys():
            numero_exclusao = input(f"Qual número deseja excluir para {nome} ? Os números disponíveis são: {self.dic[nome]} ")
            telefones = self.dic[nome].split(',')  # Separar os telefones
            if numero_exclusao in telefones:
                telefones.remove(numero_exclusao)
                if len(telefones) == 0:
                    del self.dic[nome]  # Se não houver mais telefones, exclua a entrada
                else:
                    self.dic[nome] = ','.join(telefones)  # Atualize os telefones na entrada
                print(f"Número {numero_exclusao} excluído com sucesso.")
            else:
                print(f"Número {numero_exclusao} não encontrado para {nome}.")
        else:
            print(f"Nome {nome} não encontrado na agenda.")

    def excluir_nome(self):
        nome = input("Qual nome deseja excluir ? ").lower()
        if nome in self.dic.keys():
            del self.dic[nome]

    def consultar_telefone(self):
        nome = input("Deseja consultar o número de quem ? ").lower()
        if nome in self.dic:
            print(self.dic[nome])



agenda = Agenda()

while True:
    nome = input("Qual nome deseja incluir ?  Se quiser sair do programa, aperte enter")
    if nome == '':
        break
    telefone = input("Qual telefone deseja incluir ? Se quiser sair do programa, aperte enter ")
    if telefone == '':
        break
    agenda.incluir_novo_nome(nome, telefone)

    inc_tele = input("Deseja incluir um novo telefone para um contato já existente ? Responda 'S' ou 'N': " )

    if inc_tele.lower() == 's':
        agenda.incluir_telefone()

    excluir = input("Deseja excluir um número da agenda ?  Responda 'S' ou 'N' ")

    if excluir.lower() == 's':
        agenda.excluir_telefone()

    excluir_n = input("Deseja excluir um nome da agenda ?  Responda 'S' ou 'N' ")
    if excluir_n.lower() == 's':
        agenda.excluir_nome()

    consultar = input("Deseja consultar um número da agenda ?  Responda 'S' ou 'N  ")
    if consultar.lower()== 's':
        agenda.consultar_telefone() 