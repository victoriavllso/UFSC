#ifndef ALERTSCREEN_HPP
#define ALERTSCREEN_HPP

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>
#include <iostream>

using namespace sf;
using namespace std;

namespace GRAPHIC_INTERFACE
{
    // Classe para tela de alert
    class AlertScreen
    {
        private:
            RenderWindow& main_window;  // Janela principal
            bool active;                // Indica se o alerta está ativo
            Text alertText;             // Texto do alerta
            Font font;                  // Fonte usada para o texto
            RectangleShape alertRectangle;  // Retângulo de fundo do alerta
            const string ASSETS_DIR = "./interface/assets/"; // Caminho padrão de assets
            Sprite alertIcon;           // Sprite para o ícone de alerta
            Texture alertIconTexture;   // Textura para carregar a imagem do ícone
            void run();
        public:
            ~AlertScreen();
            AlertScreen(RenderWindow& _main_window, const string& message, bool isSuccess = false);
    };
}
#endif