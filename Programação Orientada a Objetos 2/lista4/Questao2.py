from typing import List

# Interface componente
class Graphic:
    def move(self, x, y):
        pass

    def draw(self):
        pass

# Classe folha
class Dot(Graphic):
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def move(self, x, y):
        self.x += x
        self.y += y

    def draw(self):
        # Desenhar um ponto em X e Y.
        pass

# Classe que estende outra classe componente
class Circle(Dot):
    def __init__(self, x, y, radius):
        super().__init__(x, y)
        self.radius = radius

    def draw(self):
        # Desenhar um círculo em X e Y com raio R.
        pass

# Classe composite
class CompoundGraphic(Graphic):
    def __init__(self):
        self.children = []

    def add(self, child):
        self.children.append(child)

    def remove(self, child):
        self.children.remove(child)

    def move(self, x, y):
        for child in self.children:
            child.move(x, y)

    def draw(self):
        # 1. Para cada componente filho:
        #    - Desenhe o componente.
        #    - Atualize o retângulo limitante.
        # 2. Desenhe um retângulo tracejado usando as limitantes.
        pass

# Código cliente
class ImageEditor:
    def __init__(self):
        self.all = None

    def load(self):
        self.all = CompoundGraphic()
        self.all.add(Dot(1, 2))
        self.all.add(Circle(5, 3, 10))
        # ...

    def group_selected(self, components):
        group = CompoundGraphic()
        for component in components:
            group.add(component)
            self.all.remove(component)
        self.all.add(group)
        # Todos os componentes serão desenhados.
        self.all.draw()

# Exemplo de uso
editor = ImageEditor()
editor.load()

selected_components = [editor.all.children[0]]  # Selecionar o primeiro componente como exemplo
editor.group_selected(selected_components)
