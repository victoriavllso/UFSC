'''Exercício 10: Organização das Turmas
Crie um sistema que gerencia o cadastro de alunos e professores em turmas. Os usuários
serão os membros da secretaria. Eles devem conseguir visualizar os alunos matriculados em
cada turma, com seus dados, suas notas e presenças. Além disso, os secretários precisam ter
acesso a dados cadastrais dos professores associados à disciplina.
'''

class Professores():
    def __init__(self,disciplina, nome_professor):
        self.disciplina = disciplina
        self.nome_professor = nome_professor


class Alunos():
    def __init__(self, nome_aluno, idade_aluno,nota,presenca):
        self.nome_aluno = nome_aluno
        self.idade_aluno = idade_aluno
        self.nota = nota
        self.presenca = presenca

    def __str__(self) -> str:
        return f"Nome do aluno {self.nome_aluno}\nIdade do aluno: {self.idade_aluno}\nNota do aluno: {self.nota}\nPresença: {self.presenca}"
    

