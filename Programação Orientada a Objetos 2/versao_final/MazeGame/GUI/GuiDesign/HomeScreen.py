import pygame
from MazeGame.GUI.GuiDesign.Button import *
from MazeGame.GUI.GuiDesign.ScreenBase import ScreenBase
from Engine.Structs.ResourceManager import ResourceManager
from Utils import*


class HomeScreen(ScreenBase):
    def __init__(self):
        super().__init__()
        self.initialize_screen()
        self.resource_manager.get_sound(SOUND)
    


    def screen_design(self):

        # Fundo
        self.background_image = self.resource_manager.get_image(BACKGROUND_MENU)
        self.background_image = pygame.transform.scale(self.background_image, (self.width, self.height))
       
       #Botões
        button_info = [("Iniciar", self.width//2,( self.height//3)+20), ("Consultar ranking", self.width//2, ( self.height//2)+20), ("Sair", self.width//2,( self.height//3)+260)]
        images_buttons = [BUTTON_RED, BUTTON_RED, BUTTON_RED]
        self.create_buttons(button_info, images_buttons, size_button=self.width//32)


    def render(self):


        self.screen.blit(self.background_image, (0, 0))
        for key, button in self.buttons.items():
            button.change_color(pygame.mouse.get_pos())
            button.update(self.screen)


                

