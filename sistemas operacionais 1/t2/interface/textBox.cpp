#include <SFML/Graphics.hpp>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include "textBox.hpp"

using namespace sf;              
using namespace std;

namespace GRAPHIC_INTERFACE
{
    TextBox::~TextBox() {} // destrutor padrão

    TextBox::TextBox(const sf::FloatRect& rect, const std::string& filePath)
        : m_filePath(filePath), m_viewRect(rect)
    {

        // carrega a fonte utilizada
        if (!m_font.loadFromFile("./interface/assets/ArianeCoachella-Regular.ttf"))
            throw std::runtime_error("Failed to load font");

        // estilização da fonte
        m_text.setFont(m_font);
        m_text.setCharacterSize(12);
        m_text.setFillColor(sf::Color::Black);

        // estilização das scrollbar
        m_scrollBar.setSize(sf::Vector2f(10, m_viewRect.height));
        m_scrollBar.setFillColor(sf::Color(100, 100, 100));
        m_hScrollBar.setSize(sf::Vector2f(m_viewRect.width, 10));
        m_hScrollBar.setFillColor(sf::Color(100, 100, 100));

        m_isVerticalScroll = false; // inicializa o controle do scroll vertical

        loadFileContent(); // carrega o conteúdo do arquivo
    }

    // função que carrega o conteúdo do arquivo para a variável m_fileContent, caso não exista, coloca texto de erro
    void TextBox::loadFileContent()
    {
        std::ifstream file(m_filePath);
        if (file.is_open())
        {
            std::stringstream buffer;
            buffer << file.rdbuf();
            m_fileContent = buffer.str();
        } else {
            m_fileContent = "Error: failed to read inode!";
        }
        updateText(); // atualiza o texto na view
    }

    // atualiza a exibição do texto na view (de acordo com a posição de scroll), ocultando linhas que estão fora da box
    void TextBox::updateText()
    {
        m_lines.clear();
        std::string line;
        std::istringstream stream(m_fileContent);
        while (std::getline(stream, line))
            m_lines.push_back(line); // adiciona cada linha do texto no vetor de linhas

        m_maxLines = m_lines.size(); // quantidade de linhas
        m_visibleLines.clear(); // remove todas as linhas do vetor de linhas visíveis

        if (m_maxLines) // se certifica que há linhas para serem atualizadas
        {
            // de acordo com o scroll vertical, calcula quais serão as linhas a serem exibidas
            int startLine = static_cast<int>(m_scrollOffset / m_lineHeight);
            int endLine = startLine + static_cast<int>(m_viewRect.height / m_lineHeight);
            endLine = std::min(endLine, m_maxLines);

            for (int i = startLine; i < endLine; ++i)
            {
                if (i < m_maxLines)
                {
                    m_visibleLines.push_back(m_lines[i]); // torna as linhas dentro do intervalo delimitado, visíveis
                } else {
                    break;
                }
            }

            // Verifica se a largura do texto ultrapassa a largura da view
            float maxLineWidth = 0;
            for (const std::string& line : m_visibleLines)
            {
                sf::Text tempText(line, m_font, m_text.getCharacterSize());
                maxLineWidth = std::max(maxLineWidth, tempText.getLocalBounds().width);
            }

            // de acordo com a largura da linha, determina se a barra horizontal deve ser habilitada ou não
            m_maxLineWidth = maxLineWidth;
            if (maxLineWidth > m_viewRect.width)
            {
                m_isHorizontalScroll = true;
            } else {
                m_isHorizontalScroll = false;
            }

            // Verifica se é necessário scroll vertical
            if (m_maxLines > static_cast<int>(m_viewRect.height / m_lineHeight)) {
                m_isVerticalScroll = true; // Habilita o scroll vertical se houver mais linhas do que cabem na tela
            } else {
                m_isVerticalScroll = false; // Caso contrário, desativa o scroll vertical
            }
        }
    }

    // manipulador de eventos de scroll vertical
    void TextBox::handleScroll(float delta)
    {
        m_scrollOffset -= delta * 50; // velocidade de scroll
        if (m_scrollOffset < 0)
            m_scrollOffset = 0;

        // atualiza o offset de acordo com o scroll dado
        float maxOffset = m_maxLines * m_lineHeight - m_viewRect.height;
        if (m_scrollOffset > maxOffset)
            m_scrollOffset = maxOffset;
        
        updateText(); // atualiza a renderização do texto na view
    }

    // manipulador de eventos de scroll horizontal
    void TextBox::handleHorizontalScroll(float delta)
    {
        m_scrollHorizontalOffset -= delta * 50; // velocidade de scroll
        if (m_scrollHorizontalOffset < 0)
            m_scrollHorizontalOffset = 0;

        // atualiza o offset de acordo com o scroll dado
        float maxOffset = m_maxLineWidth - m_viewRect.width;
        if (m_scrollHorizontalOffset > maxOffset)
            m_scrollHorizontalOffset = maxOffset;
    }

    // manipulador de evento de clique na scrollbar horizontal
    void TextBox::handleHorizontalBarClick(const sf::Vector2i& mousePos)
    {
        // Verifica se o clique está dentro da área da barra de rolagem horizontal
        if (m_hScrollBar.getGlobalBounds().contains(mousePos.x, mousePos.y))
        {
            m_isDraggingHorizontal = true;
            m_dragStartX = mousePos.x;
            m_initialOffset = m_scrollHorizontalOffset;
        }
    }

    // manipulador de evento de release (soltar o mouse) na scrollbar horizontal
    void TextBox::handleHorizontalBarRelease()
    {
        m_isDraggingHorizontal = false;
    }

    // manipulador de evento de drag na scrollbar horizontal
    void TextBox::handleHorizontalBarDrag(const sf::Vector2i& mousePos)
    {
        if (m_isDraggingHorizontal)
        {
            // atualiza o offset de acordo com scroll dado
            float deltaX = mousePos.x - m_dragStartX;
            m_scrollHorizontalOffset = m_initialOffset + deltaX;
            float maxOffset = m_maxLineWidth - m_viewRect.width + m_margin;
            if (m_scrollHorizontalOffset < 0)
                m_scrollHorizontalOffset = 0;
            
            if (m_scrollHorizontalOffset > maxOffset)
                m_scrollHorizontalOffset = maxOffset;
            
            updateText(); // atualiza a renderização do texto na view
        }
    }

    // renderiza a textbox sobre uma window recebida como parâmetro
    void TextBox::render(sf::RenderWindow& window)
    {
        float yOffset = m_viewRect.top;

        for (const std::string& line : m_visibleLines)
        {
            // Ajusta a string com base no scroll horizontal
            std::string visibleLine;
            m_text.setString(line);
            
            float visibleWidth = 0.0f;
            float startOffset = m_scrollHorizontalOffset;

            for (unsigned int i = 0; i < line.size(); ++i)
            {
                m_text.setString(line.substr(i, 1)); // Verifica caractere por caractere
                float charWidth = m_text.getLocalBounds().width;

                if (startOffset > 0)
                {
                    startOffset -= charWidth; // Ignora caracteres à esquerda
                    if (startOffset <= 0)
                        visibleWidth -= startOffset; // Ajuste para caracteres parcialmente visíveis
                    continue;
                }

                if (visibleWidth + charWidth > m_viewRect.width)
                    break; // Interrompe se exceder a largura visível

                visibleLine += line[i];
                visibleWidth += charWidth;
            }

            // Define a posição e o texto visível para renderização
            m_text.setString(visibleLine);
            m_text.setPosition(m_viewRect.left, yOffset);

            // Verifica se a linha está dentro da área visível na vertical
            if (yOffset + m_lineHeight > m_viewRect.top && yOffset < m_viewRect.top + m_viewRect.height)
                window.draw(m_text);

            yOffset += m_lineHeight;
        }

        // Desenha a barra de rolagem vertical
        if (m_maxLines * m_lineHeight > m_viewRect.height)
        {
            float scrollBarHeight = m_viewRect.height * (m_viewRect.height / (m_maxLines * m_lineHeight));
            m_scrollBar.setSize(sf::Vector2f(10, scrollBarHeight));

            float scrollPosition = (m_scrollOffset / (m_maxLines * m_lineHeight - m_viewRect.height)) * (m_viewRect.height - scrollBarHeight);
            m_scrollBar.setPosition(m_viewRect.left + m_viewRect.width - 10, m_viewRect.top + scrollPosition);
            window.draw(m_scrollBar);
        }

        // Desenha a barra de rolagem horizontal
        if (m_isHorizontalScroll)
        {
            float scrollBarWidth = m_viewRect.width * (m_viewRect.width / m_maxLineWidth);
            m_hScrollBar.setSize(sf::Vector2f(scrollBarWidth, 10));

            float scrollPosition = (m_scrollHorizontalOffset / (m_maxLineWidth - m_viewRect.width)) * (m_viewRect.width - scrollBarWidth);
            m_hScrollBar.setPosition(m_viewRect.left + scrollPosition, m_viewRect.top + m_viewRect.height - 10);
            window.draw(m_hScrollBar);
        }
    }
}