#ifndef TEXTBOX_HPP
#define TEXTBOX_HPP

#include <SFML/Graphics.hpp>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

using namespace sf;              
using namespace std;

namespace GRAPHIC_INTERFACE
{

    // Classe de elemento gráfico que renderiza uma caixa com o texto contido em um determinado arquivo
    class TextBox
    {
        private:
            Font m_font; // fonte utilizada
            Text m_text; // o elemento gráfico Text que terá o texto a ser renderizado
            RectangleShape m_scrollBar; // scrollbar vertical
            RectangleShape m_hScrollBar; // scrollbar horizontal
            string m_filePath; // caminho para o arquivo
            FloatRect m_viewRect; // retângulo representando o posicionamento da view dentro de uma janela
            vector<string> m_lines; // linhas do texto contido no arquivo
            vector<string> m_visibleLines; // linhas vísíveis
            string m_fileContent; // conteúdo do arquivo
            float m_scrollOffset = 0; // posição da scrollbar vertical
            float m_scrollHorizontalOffset = 0; // posição da scrollbar horizontal
            int m_maxLines = 0; // número máximo de linhas a serem renderizadas (as demias ficam ocultas até ser feito o scroll até elas)
            float m_maxLineWidth = 0; // largura (em caracteres) máxima da linha visível (o restante da linha fica oculto até ser feito o scroll)
            const float m_lineHeight = 20; // Definindo a altura das linhas
            bool m_isHorizontalScroll = false; // flag que indica evento de scroll horizontal
            bool m_isDraggingHorizontal = false; // flag que indica evento draggable da scrollbar horizontal
            float m_dragStartX = 0; // posição x do mouse ao iniciar um evento drag
            float m_initialOffset = 0; // posição inicial da scrollbar horizontal ao iniciar um evento drag
            float m_margin = 50.0f; // Margem adicional para o scroll
        public:
            ~TextBox(); // destrutor padrão
            TextBox(const sf::FloatRect& rect, const std::string& filePath); // construtor, recebe o rect que indica as posições da view sobre a window, e o filepath
            void loadFileContent(); // carrega o texto do arquivo para uma variável
            void updateText(); // atualiza o texto na view
            void handleScroll(float delta); // manipulador de evento de scroll vertical
            void handleHorizontalScroll(float delta); // manipulador de evento de scroll horizontal
            void handleHorizontalBarClick(const sf::Vector2i& mousePos); // manipulador de evento de clique na scrollbar horizontal
            void handleHorizontalBarRelease(); // manipulador de evento de release (soltar o mouse) na scrollbar horizontal
            void handleHorizontalBarDrag(const sf::Vector2i& mousePos); // manipulador de evento de drag na scrollbar horizontal
            void  render(sf::RenderWindow& window); // renderiza os elementos gráficos sobre a window recebida como parâmetro
            bool m_isVerticalScroll; // controla se deve haver ou não scroll vertical
    };
}

#endif