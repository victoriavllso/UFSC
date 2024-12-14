#ifndef GRAPHIC_INTERFACE_HPP
#define GRAPHIC_INTERFACE_HPP

#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp> // Para botões e elementos gráficos.
#include <functional>
#include <vector>

using namespace sf;              
using namespace std;

namespace GRAPHIC_INTERFACE
{
    // Classe base para a tela gráfica
    class Screen
    {
        protected:
            RenderWindow window; // janela principal.
            Font font;           // fonte para os textos.
            Vector2f padding; // espaçamento interno
            vector<RectangleShape> buttons; // vetor de botões (retângulos).
            vector<function<void(void*)>> buttonsHandler; // vetor das funções de click dos botões
            vector<Text> buttonLabels;      // textos nos botões.
            vector<Clock> clickTimers; // timers de click relacionados à mudança de estado do botão
            const string ASSETS_DIR = "./interface/assets/"; // caminho padrão de assets

            void handleButtonClicks(Event event); // gerenciar eventos de clique.
            void drawButtons();         // desenhar os botões.

        public:
            virtual ~Screen(); // destruidor virtual
            Screen(unsigned int width, unsigned int height, const string& title);
            
            void addButton(const string& label, Vector2f position, Vector2f size, function<void(void*)> click); // adicionar um botão
            
            // Funções virtuais para implementação nas classes filhas.
            virtual void handleEvents() = 0; // eventos específicos da tela.
            virtual void draw() = 0;         // desenho específico da tela.
            virtual void run()=0;              // loop principal da tela.
            virtual void setText(vector<string> data) = 0;    // adicionar dados de imagem.
    };
}

#endif // GRAPHIC_INTERFACE_HPP
