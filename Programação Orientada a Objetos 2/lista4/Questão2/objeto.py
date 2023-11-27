
class ObjetoGeometrico:
    def __init__(self) -> None:
        self.objetos = []




    def adiciona_objetos(self,forma_geometrica):
        self.objetos.append(forma_geometrica)

    def desenha(self, objetos):
        for objeto in objetos:
            print(objeto)


class Retangulo:
    def __init__(self) -> None:
        self.x = x
        self.