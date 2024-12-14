#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>
#include <iostream>
#include <vector>
#include "screen.hpp"

using namespace sf;
using namespace std;

namespace GRAPHIC_INTERFACE 
{

    Screen::~Screen() {} // destrutor padrão

    // Construtor da tela
    Screen::Screen(unsigned int width, unsigned int height, const std::string& title)
        : window(VideoMode(width, height), title, Style::Resize | Style::Close)
    {
        if (!font.loadFromFile(ASSETS_DIR+"ArianeCoachella-Regular.ttf"))
            cout << "Erro ao carregar a fonte! Verifique o caminho do arquivo de fonte." << "\n";
    }

    // Adiciona um botão na tela, com label, posição, tamanho e a função de click recebida como parâmetro
    void Screen::addButton(const string& label, Vector2f position, Vector2f size, function<void(void*)> click)
    {
        RectangleShape button(size);
        Text text(label, font, 20);
        FloatRect textBounds = text.getLocalBounds(); // Para calcular o tamanho do texto e ajustar o botao

        // Seta posição e estilo no botão
        button.setPosition(position);
        button.setFillColor(Color::White);
        button.setOutlineColor(Color::Black);

        // Seta posição e estilo no texto do botão
        text.setPosition(position.x + (button.getSize().x - textBounds.width) / 2, 
                         position.y + (button.getSize().y - textBounds.height) / 2);
        text.setFillColor(Color::Black);

        // Adiciona o botão e seus componentes além da função de clique em vetor próprio de controle
        buttons.push_back(button);
        buttonLabels.push_back(text);
        buttonsHandler.push_back(click);

        clickTimers.emplace_back(); // Inicia um temporizador pro botão novo (utilizado para controlar estado do botão ao clicar)
    }

    // Função para tratar os cliques dos botões
    void Screen::handleButtonClicks(Event event) 
    {
        if (event.mouseButton.button == Mouse::Left)
        {
            Vector2i mousePos = Mouse::getPosition(window); // Captura a posição do cursor

            // Verificar se o clique ocorreu sobre algum botão
            for (size_t i = 0; i < buttons.size(); i++)
            {
                if (buttons[i].getGlobalBounds().contains(static_cast<float>(mousePos.x), static_cast<float>(mousePos.y)))
                {
                    buttonsHandler[i](reinterpret_cast<void*>(&i)); // No botão clicado, chama a função de clique passando o índice do botão como void pointer
                    buttons[i].setOutlineThickness(1); // Alterar o estilo (temporariamente) para indicar que o botão foi clicado
                    clickTimers[i].restart(); // Reinicia o temporizador usado para verificar o clique
                }
            }
        }

        // Restaura para o estilo do botão (não clicado)
        const float CLICK_TIME_LIMIT = 0.2f; // Tempo para restaurar (em segundos)

        for (size_t i = 0; i < buttons.size(); ++i) 
        {
            if (clickTimers[i].getElapsedTime().asSeconds() > CLICK_TIME_LIMIT)
                buttons[i].setOutlineThickness(0); // Volta para o estilo original
        }
    }

    // Função que desenha os botões (retângulo e text label) na tela
    void Screen::drawButtons()
     {
        for (size_t i = 0; i < buttons.size(); ++i)
        {
            window.draw(buttons[i]);
            window.draw(buttonLabels[i]);
        }
    }
    
} // END NAMESPACE
