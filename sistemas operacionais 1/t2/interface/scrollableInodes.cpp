#include <SFML/Graphics.hpp>
#include <vector>
#include <functional>
#include <string>
#include <stdexcept>
#include <iostream>

#include "scrollableInodes.hpp"

using namespace sf;
using namespace std;

namespace GRAPHIC_INTERFACE 
{
    ScrollableGrid::~ScrollableGrid() {}; // destrutor padrão

    // construtor (inicializa corretamente os atributos)
    ScrollableGrid::ScrollableGrid(int cols, int visibleRows, float offsetX, float offsetY)
        : cols(cols), rows(0), visibleRows(visibleRows), scrollOffset(0), offsetX(offsetX), offsetY(offsetY), callback(defaultCallback)
    {

        // Carrega a fonte para os textos da view
        if (!font.loadFromFile(ASSETS_DIR+"ArianeCoachella-Regular.ttf"))
            throw runtime_error("Erro ao carregar a fonte");

        // Carrega a textura do ícone do inode
        if (!iconTexture.loadFromFile(ASSETS_DIR+"file.png")) 
            throw runtime_error("Erro ao carregar a imagem do ícone");

        // Configura a view de rolagem
        view.setSize(800, 600); // Tamanho inicial da view
        view.setCenter(view.getSize().x / 2, view.getSize().y / 2);

        // Configura a barra de rolagem
        scrollbar.setSize(Vector2f(15, 0));
        scrollbar.setFillColor(Color::White);

        updateScrollbarPosition(); // atualiza a posição da scrollbar
    }

    // Método para atualizar a posição da barra de rolagem
    void ScrollableGrid::updateScrollbarPosition()
    {
        // Calcula a altura da barra de rolagem com um fator de redução
        float scrollbarHeight = (view.getSize().y / (rows * (iconTexture.getSize().y + 10))) * view.getSize().y;
        
        // Ajusta a altura da barra de rolagem para permitir um pouco mais de rolagem
        float margin = 100.f;
        scrollbarHeight = max(scrollbarHeight - margin, 15.f); // Garantir um tamanho mínimo de 15 pixels

        // seta o novo tamanho e posição
        scrollbar.setSize(Vector2f(15, scrollbarHeight));
        scrollbar.setPosition(offsetX + cols * (iconTexture.getSize().x + 5) + 5, offsetY);
    }

    // Método para retornar a view
    View ScrollableGrid::getView() const
    {
        return view;
    }

    void ScrollableGrid::addINumber(int inumber)
    {
        // Adiciona um novo inode com o inumber
        Button button;
        button.icon.setTexture(iconTexture);

        // Define a escala da imagem
        float scaleX = 1.f; // 1 para manter as proporções originais
        float scaleY = 1.f;
        button.icon.setScale(scaleX, scaleY);

        // Configura a posição do ícone de acordo com a lina e coluna
        int row = buttons.size() / cols;
        int col = buttons.size() % cols;
        button.icon.setPosition(offsetX + col * (iconTexture.getSize().x * scaleX + 5),
                                offsetY + row * (iconTexture.getSize().y * scaleY + 30)); //constantes +5 e +30 para um espaçamento entre ícones, e entre linhas

        // Atualiza o atributo y do botão com base na posição
        button.y = button.icon.getPosition().y;

        // Configura o texto do botão
        button.text.setFont(font);
        button.text.setString("inode " + to_string(inumber)); // o texto é sempre dado como inode {inumber}
        button.text.setCharacterSize(18);
        button.text.setFillColor(Color::Black);
        button.text.setPosition(
            button.icon.getPosition().x + iconTexture.getSize().x * scaleX / 2 - button.text.getLocalBounds().width / 2,
            button.icon.getPosition().y + iconTexture.getSize().y * scaleY
        );

        // Configura o fundo do texto com largura fixa com base no texto e altura suficiente
        button.textBackground.setSize(Vector2f(button.text.getLocalBounds().width + 10, 25));
        button.textBackground.setFillColor(Color(200, 200, 200));
        button.textBackground.setPosition(button.text.getPosition().x - 5, button.text.getPosition().y - 5);

        button.onClick = callback;

        button.value = inumber; // Valor associado ao botão (útil ao manipular o clique, abrindo a tela de inode correta)
        buttons.push_back(button); // adiciona o botão criado na lista de botões (i.e. na lista de inodes)

        // Atualizar o número de linhas na grade
        rows = (buttons.size() + cols - 1) / cols;

        // Atualizar a view e barra de rolagem
        updateScrollbarPosition();
    }

    void ScrollableGrid::removeInumber(int inumber)
{
    // Remove o botão correspondente ao inumber fornecido
    buttons.erase(remove_if(buttons.begin(), buttons.end(),
                            [inumber](const Button& b) {
                                return b.value == inumber;
                            }),
                  buttons.end());

    // Atualiza o número de linhas na grade
    rows = (buttons.size() + cols - 1) / cols;

    // Redefine as posições de todos os botões após a remoção
    for (size_t i = 0; i < buttons.size(); ++i)
    {
        Button& button = buttons[i];

        // Recalcula a posição do botão
        int row = i / cols;
        int col = i % cols;
        float scaleX = 1.f; // Mantendo a escala padrão
        float scaleY = 1.f;
        button.icon.setPosition(offsetX + col * (iconTexture.getSize().x * scaleX + 5),
                                offsetY + row * (iconTexture.getSize().y * scaleY + 30));
        button.text.setPosition(
            button.icon.getPosition().x + iconTexture.getSize().x * scaleX / 2 - button.text.getLocalBounds().width / 2,
            button.icon.getPosition().y + iconTexture.getSize().y * scaleY);
        button.textBackground.setPosition(button.text.getPosition().x - 5, button.text.getPosition().y - 5);

        // Atualiza o atributo y do botão
        button.y = button.icon.getPosition().y;
    }

    // Atualiza a barra de rolagem
    updateScrollbarPosition();
}

    // setter para a função de click dos botões
    void ScrollableGrid::setButtonCallback(const function<void(int)>& _callback)
    {
        callback = _callback;
    }

    // manipulador de eventos de clique desta view
    void ScrollableGrid::handleMouseClick(const Vector2f& mousePos)
    {
        // para cada um dos botões, verifica se o clique foi sobre sua posição, nesse caso, chama a sua função de clique definida anteriormente
        for (auto& button : buttons)
        {
            if (button.icon.getGlobalBounds().contains(mousePos))
            {
                if (button.onClick)
                    button.onClick(button.value); // chamada da função de clique
                return;
            }
        }
    }

    // Manipulador de eventos de scroll desta view
    void ScrollableGrid::handleScroll(float delta)
    {
        // Margem adicional para permitir rolar além do final
        float extraMargin = 40.f*rows;

        // Atualiza o deslocamento da rolagem
        scrollOffset += delta;
        scrollOffset = max(0.f, min(scrollOffset, rows * (iconTexture.getSize().y + 10) - view.getSize().y + extraMargin));

        // Atualiza a view
        view.setCenter(view.getSize().x / 2, scrollOffset + view.getSize().y / 2);

        // Atualiza a posição da barra de rolagem
        float scrollbarPos = offsetY + (scrollOffset / (rows * (iconTexture.getSize().y + 10))) * view.getSize().y;
        scrollbar.setPosition(offsetX + cols * (iconTexture.getSize().x + 5) + 5, scrollbarPos);

        // Atualiza a posição y de cada botão
        for (auto& button : buttons)
            button.y = button.icon.getPosition().y - scrollOffset;
    }

    // método que renderiza os elementos da view sobre a window recebida como parâmetro
    void ScrollableGrid::draw(RenderWindow& window)
    {
        // Renderiza os botões dentro da view de rolagem
        window.setView(view);
        for (const auto& button : buttons)
        {
            // Verifica se a posição y do botão está dentro do intervalo de visualização
            if (button.y >= ymin && button.y <= ymax)
            {
                // o botão só é renderizado se estiver dentro dos ranges da view
                window.draw(button.icon);
                window.draw(button.textBackground);
                window.draw(button.text);
            }
        }

        // Renderizar a barra de rolagem com a view padrão
        window.setView(window.getDefaultView());
        window.draw(scrollbar);
    }
}