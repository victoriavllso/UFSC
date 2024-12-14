#ifndef SCROLLABLE_INODE_HPP
#define SCROLLABLE_INODE_HPP

#include <SFML/Graphics.hpp>
#include <vector>
#include <functional>
#include <string>
#include <stdexcept>

using namespace sf;              
using namespace std;

namespace GRAPHIC_INTERFACE
{
    // Classe com botões de inodes scrollável
    class ScrollableGrid
    {
        private:
            // definindo structure do botão, contendo as informações necessárias (elemento gráfico de inode que é exibido na tela principal)
            struct Button
            {
                Sprite icon; // Ícone do botão
                RectangleShape textBackground; // Fundo do texto
                Text text; // Texto exibido abaixo do ícone
                int value; // Valor associado ao botão
                function<void(int)> onClick; // Função callback do botão
                float y; // Atributo para armazenar a posição y na view
            };

            vector<Button> buttons; // Vetor de botões
            Font font; // Fonte para o texto dos botões
            Texture iconTexture; // Textura do ícone
            View view; // View para a área de rolagem
            RectangleShape scrollbar; // Barra de rolagem
            int cols; // Número fixo de colunas
            int rows; // Número de linhas na grade
            int visibleRows; // Número de linhas visíveis
            float scrollOffset; // Offset de rolagem
            float offsetX, offsetY; // Deslocamento da grade na tela

            // [ymin, ymax] definem o range que os inodes devem aparecer na tela (fora disso, ao scrollar eles não devem ser renderizados)
            const float ymin = 30;
            const float ymax = 600;

            const string ASSETS_DIR = "./interface/assets/"; // caminho padrão de assets

            function<void(int)>& callback; // callback para o click nos inodes
            function<void(int)> defaultCallback = [](int value) {throw runtime_error("Callback não inicializado!");}; 

        public:
            ~ScrollableGrid(); // destrutor padrão
            ScrollableGrid(int cols, int visibleRows, float offsetX, float offsetY); // construtor com parâmetros variáveis
            void updateScrollbarPosition(); // atualiza a posição da scrollbar ao realizar evento de scroll
            View getView() const; // retorna a view correspondente deste elemento gráfico
            void addINumber(int inumber); // adiciona novo INumber na visualização
            void removeInumber(int inumber);
            void setButtonCallback(const function<void(int)>& _callback); // seta a função de clique a ser chamada quando clicar em cada inode
            void handleMouseClick(const Vector2f& mousePos); // manipula os eventos de clique nesta view
            void handleScroll(float delta); // manipula o evento de rolagem da view
            void draw(RenderWindow& window); // renderiza os elementos sobre a window recebida como parâmetro
    };
}

#endif
