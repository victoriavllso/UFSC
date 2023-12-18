from Engine.Structs.ResourceManager import ResourceManager
from Utils import*
class Sound:
    def __init__(self) -> None:
        self.resource = ResourceManager()

    def game(self):
        self.resource.get_sound(SOUND_TEST)
        

    def victory(self):
        self.resource.get_sound(SOUND_VICTORY)

    def game_over(self):
        self.resource.get_sound(SOUND_GAME_OVER)

