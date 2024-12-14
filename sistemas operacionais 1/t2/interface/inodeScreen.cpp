#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>
#include <iostream>
#include "inodeScreen.hpp"
#include "../fs.h"
#include "alertScreen.hpp"
#include "scrollableInodes.hpp"
#include "../fileOps.h"

using namespace sf;
using namespace std;

namespace GRAPHIC_INTERFACE 
{

    InodeScreen::~InodeScreen() {} // Destrutor padrão

    // Construtor (inicializa corretamente a screen)
    InodeScreen::InodeScreen(int _inumber, INE5412_FS *systemFile, ScrollableGrid* _inodesGrid, const char* _readfile, const char* _writefile) : Screen(800, 500, "Tela Inode"), 
                            textBox(FloatRect(200, 50, 600, 420), "stdout.txt"), inodesGrid(_inodesGrid), readfile(_readfile), writefile(_writefile)
    {
        // Setando informações recebidas do construtor
        fs = systemFile;
        inumber = _inumber;
        update_info_inode(); // Atualiza a tela de acordo com o inumber

        // Setar a imagem de fundo da tela
        if (!backgroundTexture.loadFromFile("./interface/assets/fundo-tela-inode.png"))
            cout << "Erro ao carregar a imagem de fundo!" << endl;
        backgroundSprite.setTexture(backgroundTexture);

        // Ajustando a imagem ao tamanho da janela
        Vector2u windowSize = window.getSize(); // Tamanho da janela
        backgroundSprite.setScale(
            static_cast<float>(windowSize.x) / backgroundTexture.getSize().x,  // Escala para largura
            static_cast<float>(windowSize.y) / backgroundTexture.getSize().y   // Escala para altura
        );

        // Adiciona botões com seus respectivos: posição, tamanho e função de click (com lambda por ser um método da própria classe)
        addButton("Deletar", Vector2f(30, 335), Vector2f(150, 40), [this](void* data) {this->delete_button_click(data);});
        addButton("Carregar", Vector2f(30, 390), Vector2f(150, 40), [this](void* data) {this->load_file_button_click(data);});
        addButton("Salvar", Vector2f(30, 445), Vector2f(150, 40), [this](void* data) {this->save_file_button_click(data);});
    }

    // Tratar eventos (cliques nos botões, etc.)
    void InodeScreen::handleEvents() 
    {
        Event event;

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close(); // Fecha a tela caso o evento seja do tipo Close

            // Evento de scroll do mouse
            if (event.type == Event::MouseWheelScrolled)
            {
                if (event.mouseWheelScroll.wheel == Mouse::Wheel::VerticalWheel && textBox.m_isVerticalScroll)
                {
                    textBox.handleScroll(event.mouseWheelScroll.delta); // Scroll Vertical apenas feito quando está ativado (quando é necessário)
                } else if (event.mouseWheelScroll.wheel == Mouse::Wheel::HorizontalWheel) {
                    textBox.handleHorizontalScroll(event.mouseWheelScroll.delta); // Scroll Horizontal
                }
            }
            
            // Evento de clique no botao pelo mouse
            if (event.type == Event::MouseButtonPressed)
            {
                handleButtonClicks(event); // Trata cliques em botões
                if (event.mouseButton.button == sf::Mouse::Left)
                    textBox.handleHorizontalBarClick(sf::Mouse::getPosition(window));
            }

            if (event.type == sf::Event::MouseButtonReleased)
            {
                if (event.mouseButton.button == sf::Mouse::Left)
                    textBox.handleHorizontalBarRelease();
            }

            if (event.type == sf::Event::MouseMoved)
                textBox.handleHorizontalBarDrag(sf::Mouse::getPosition(window));
        }
    }

    // Renderizar os elementos gráficos da tela
    void InodeScreen::draw() 
    {
        window.clear(Color::White); // Cor de fundo

        window.draw(backgroundSprite); // Renderizar o fundo da tela
        drawButtons(); // Renderiza os botões
        textBox.render(window);

        window.draw(directBlocksText);
        window.draw(indirectBlockText);
        window.draw(indirectBlockPointersText);
        window.draw(sizeText);
        window.draw(inodeName);
        
        window.display(); // Exibe o conteúdo na tela
    }

    // Loop principal da tela
    void InodeScreen::run() 
    {
        // Enquanto a tela estiver aberta, os eventos são tratados e os elementos são renderizados
        while (window.isOpen())
        {
            handleEvents();
            draw();
        }
    }

    // Função chamada ao clicar no botão de carregamento do arquivo para o inode
    void InodeScreen::load_file_button_click(void* data)
    {
        streambuf* coutBufferOriginal = cout.rdbuf();
        // Cria um ostringstream para capturar a saída
        std::ostringstream log;
        std::cout.rdbuf(log.rdbuf());

        File_Ops::do_copyin(readfile, inumber, fs);

        std::cout.rdbuf(coutBufferOriginal);

        AlertScreen(window, log.str());

        update_info_inode();
    }

    // Função chamada ao clicar no botão de salvar inode em um arquivo
    void InodeScreen::save_file_button_click(void* data)
    {
        streambuf* coutBufferOriginal = cout.rdbuf();
        // Cria um ostringstream para capturar a saída
        std::ostringstream log;
        std::cout.rdbuf(log.rdbuf());

        File_Ops::do_copyout(inumber, writefile, fs);

        std::cout.rdbuf(coutBufferOriginal);

        AlertScreen(window, log.str());
        update_info_inode();
    }

    // Função chamada ao clicar no botão de deletar o inode
    void InodeScreen::delete_button_click(void* data)
    {
        if (fs->fs_delete(inumber))
        {
            AlertScreen(window, "inode "+to_string(inumber)+" deletado!", true);
            inodesGrid->removeInumber(inumber);
        } else {
            AlertScreen(window, "Erro: inode não foi deletado!");
        }
        window.close();
    }

    // Função chamada para setar o texto que contém as informações sobre o inode
    void InodeScreen::setText(vector<string> data) 
    {
        sizeText.setString("Tamanho: "+data[0]+" B");
        directBlocksText.setString("Blocos diretos:\n"+data[1].substr(0, 10)+"...");
        indirectBlockText.setString("Bloco indireto: "+data[2]);
        indirectBlockPointersText.setString("Blocos indiretos:\n"+data[3].substr(0, 10)+"...");
        inodeName.setString("inode "+data[4]);
        
        sizeText.setFont(font); // Usar o atributo 'font' herdado da classe 'Screen'
        sizeText.setCharacterSize(16);
        sizeText.setPosition(30, 180);
        sizeText.setFillColor(Color::Black);

        directBlocksText.setFont(font);
        directBlocksText.setCharacterSize(16);
        directBlocksText.setPosition(30, 200);
        directBlocksText.setFillColor(Color::Black);

        indirectBlockText.setFont(font);
        indirectBlockText.setCharacterSize(16);
        indirectBlockText.setPosition(30, 250);
        indirectBlockText.setFillColor(Color::Black);

        indirectBlockPointersText.setFont(font);
        indirectBlockPointersText.setCharacterSize(16);
        indirectBlockPointersText.setPosition(30, 270);
        indirectBlockPointersText.setFillColor(Color::Black);

        inodeName.setFont(font);
        inodeName.setCharacterSize(25);
        inodeName.setPosition(55, 150);
        inodeName.setFillColor(Color::Black);
    }

    // Atualiza as informações de um inode na tela
    void InodeScreen::update_info_inode()
    {
        INE5412_FS::fs_inode inode;
        if(!fs->inode_load(inumber, &inode))
        {
            AlertScreen(window, "Erro: não foi possível carregar o inode!");
            return;
        }

        int size = fs->fs_getsize(inumber);
        string direct_blocks = fs->get_direct_blocks(&inode);
        string indirect_blocks = fs->get_indirect_blocks(&inode);
        setText({to_string(size), direct_blocks, to_string(inode.indirect), indirect_blocks, to_string(inumber)});

        // Realiza uma cópia dos dados do inode para o arquivo "stdout.txt"
        File_Ops::do_copyout(inumber, "stdout.txt", fs);
        // Seta o texto na tela de acordo com o que foi escrito no arquivo
        textBox.loadFileContent();
    }
} // namespace GRAPHIC_INTERFACE