#ifndef INODESCREEN_HPP
#define INODESCREEN_HPP

#include "screen.hpp"
#include "textBox.hpp"
#include "../fs.h"
#include "scrollableInodes.hpp"

namespace GRAPHIC_INTERFACE
{
    // Classe de tela de inode
    class InodeScreen : public GRAPHIC_INTERFACE::Screen 
    {
        private:
            INE5412_FS *fs;
            Texture backgroundTexture;        // Para a textura do fundo
            Text directBlocksText;            // Texto de blocos diretos
            Text indirectBlockText;           // Texto de bloco indireto
            Text indirectBlockPointersText;   // Texto de ponteiros de bloco indireto
            Text sizeText;                    // Texto de tamanho
            Text inodeName;
            Sprite backgroundSprite;          // Para o fundo
            int inumber; // Inumber associado
            TextBox textBox;
            ScrollableGrid* inodesGrid;
            const char* readfile;
            const char* writefile;

            void load_file_button_click(void* data); // Click no botão de carregar arquivo para o inode
            void save_file_button_click(void* data); // Click no botão de salvar arquivo para o inode
            void delete_button_click(void* data); // Click no botão de deletar inode
            void update_info_inode();

        public:
            InodeScreen(int _inumber, INE5412_FS *systemFile, ScrollableGrid* _inodesGrid, const char* _readfile, const char* _writefile); // construtor recebendo inumber
            ~InodeScreen(); // Destrutor padrão
            void handleEvents() override; // Manipulador de eventos
            void draw() override; // Função que renderiza elementos gráficos na tela
            void run() override; // Loop principal que executa a tela
            void setText(vector<string> data) override; // Função que adiciona dados de imagem
    };
}
#endif