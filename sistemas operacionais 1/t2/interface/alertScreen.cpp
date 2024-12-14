#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>
#include <iostream>
#include "alertScreen.hpp"

using namespace sf;
using namespace std;

namespace GRAPHIC_INTERFACE
{
    AlertScreen::~AlertScreen() {}

    AlertScreen::AlertScreen(RenderWindow& _main_window, const string& message, bool isSuccess)
        : main_window(_main_window), active(true)
    {
        // Carregar a fonte
        if (!font.loadFromFile(ASSETS_DIR + "ArianeCoachella-Regular.ttf"))
            throw runtime_error("Erro ao carregar a fonte.");

        // Carregar o ícone de warning ou success (imagem)
        if (!alertIconTexture.loadFromFile(ASSETS_DIR + (isSuccess ? "success_icon.png" : "warning_icon.png")))
            throw runtime_error("Erro ao carregar o ícone de alerta.");

        // Configura o retângulo de fundo
        alertRectangle.setSize(Vector2f(500, 200));  // Define o tamanho do retângulo
        alertRectangle.setFillColor(Color(240, 240, 240));    // Define a cor do retângulo como branca
        alertRectangle.setPosition((main_window.getSize().x - 500) / 2, (main_window.getSize().y - 200) / 2);  // Centraliza o retângulo na janela principal

        // Configura o texto de alerta
        alertText.setFont(font);
        alertText.setString(message);
        alertText.setCharacterSize(20);
        alertText.setFillColor(Color::Black);

        // Centraliza o texto dentro do retângulo
        FloatRect textBounds = alertText.getLocalBounds();
        alertText.setPosition(
            (alertRectangle.getSize().x - textBounds.width) / 2 + alertRectangle.getPosition().x,
            (alertRectangle.getSize().y - textBounds.height) / 2 + alertRectangle.getPosition().y
        );

        // Configura o sprite do ícone de alerta
        alertIcon.setTexture(alertIconTexture);
        alertIcon.setPosition(
            alertRectangle.getPosition().x + 20, // Posição horizontal do ícone
            alertRectangle.getPosition().y + 20  // Posição vertical do ícone
        );

        run();
    }

    // Loop principal da tela
    void AlertScreen::run()
    {
        // Continua rodando enquanto a tela estiver ativa
        while (active)
        {
            Event event;
            // Processa os eventos na janela principal
            while (main_window.pollEvent(event))
            {
                // Verifica se é necessário encerrar o lop e fechar o alert
                if (event.type == Event::Closed || (event.type == Event::KeyPressed && event.key.code == Keyboard::Enter) || event.type == Event::MouseButtonPressed)
                    active = false;
            }

            // Renderiza o alerta na janela principal
            main_window.draw(alertRectangle);  // Desenha o fundo
            main_window.draw(alertIcon);       // Desenha o ícone
            main_window.draw(alertText);       // Desenha o texto
            main_window.display();
        }
    }
}
