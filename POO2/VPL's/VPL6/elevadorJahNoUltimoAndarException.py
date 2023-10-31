class ElevadorJahNoUltimoAndarException(Exception):
    def __init__(self):
        super().__init__("O elevador está já está no último andar")

