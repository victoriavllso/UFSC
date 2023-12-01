from typing import Any


class Singleton(type):
    _instances = {}

    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            instance = super().__call__(*args, **kwargs)
            cls._instances[cls] = instance
        return cls._instances[cls]

class Tabuleiro(metaclass=Singleton):
    def __init__(self) -> None:
        pass

    def movimentar_peca(self):
        pass

    def mostrar_tabuleiro(self):
        pass