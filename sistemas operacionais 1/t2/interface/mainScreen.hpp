#ifndef MAINSCREEN_HPP
#define MAINSCREEN_HPP

#include "screen.hpp"
#include "scrollableInodes.hpp"
#include "../fs.h"

namespace GRAPHIC_INTERFACE
{
    // Classe de tela principal
    class MainScreen : public GRAPHIC_INTERFACE::Screen 
    {
        private:
            INE5412_FS *fs; // sistema de arquivos
            Texture backgroundTexture; // para a textura do fundo
            Text sizeText; // texto de tamanho
            Text blockText; // texto de bloco
            Text writeText; // texto de escrita
            Text readText; // texto de leitura
            Text imageName; // texto de nome da imagem
            char* readfile; // arquivo padrão para leitura
            char* writefile; // arquivo padrão para escrita


            Sprite backgroundSprite;  // para o fundo
            GRAPHIC_INTERFACE::ScrollableGrid inodesGrid; // grade de inodes

            void format_button_click(void* data); // click no botão de formatar
            void mount_button_click(void* data); // click no botão de montar
            void create_button_click(void* data); // click no botão de criar
        public:
            MainScreen(INE5412_FS *systemFile, char* _readfile, char* _writefile); // construtor padrão
            ~MainScreen(); // destrutor padrão
            void handleEvents() override; // manipulador de eventos
            void draw() override; // função que renderiza elementos gráficos na tela
            void run() override; // loop principal que executa a tela
            void setText(vector<string> data) override; // função que adiciona dados de imagem
    };
}
#endif
