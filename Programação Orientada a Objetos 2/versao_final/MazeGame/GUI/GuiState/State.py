import pygame
from abc import ABC, abstractmethod


class State(ABC):
    def __init__(self, setstatus,view) -> None:
        self.__view = view
        self.__setstatus = setstatus
    

    @property
    def sound(self):
        return self.__sound
    
    @sound.setter
    def sound(self, sound):
        self.__sound = sound

    @property
    def setstatus(self):
        return self.__setstatus

    @property
    def view(self):
        return self.__view
    
    @view.setter
    def view(self, view):
        self.__view = view

    def render(self): #desenha a tela
        self.view.screen_design()
        self.view.render()
        self.events_loop()

    @abstractmethod
    def update(self,event): #atualiza os objetos em cada estado
        pass
    
   