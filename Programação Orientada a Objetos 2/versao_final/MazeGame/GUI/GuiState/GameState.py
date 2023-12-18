from MazeGame.GUI.GuiState.State import State
import pygame
from MazeGame.MazeGame import MazeGame
from MazeGame.MazeGame import GameEvents



class GameState(State):
  def __init__(self, setstatus, view=None):
    super().__init__(setstatus, view)
    
  def render(self):
    game = MazeGame(viewstate=self)
    game.run()

  def update(self, event):
    if event == GameEvents.PLAYER_DIED:
      pygame.mixer.stop()
      self.setstatus.state('game_over')
      self.sound.game_over()

    elif event == GameEvents.FINISH:
      pygame.mixer.stop()
      self.setstatus.state('ranking')
      self.sound.victory()

    elif event == GameEvents.PAUSE:
      self.setstatus.state()

    elif event == GameEvents.BACK_MENU:
      self.setstatus.state('home')


