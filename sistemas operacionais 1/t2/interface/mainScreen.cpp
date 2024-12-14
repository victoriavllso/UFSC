#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>
#include <iostream>
#include "mainScreen.hpp" 
#include "inodeScreen.hpp"
#include "alertScreen.hpp"
#include "../fs.h"
using namespace sf;
using namespace std;

namespace GRAPHIC_INTERFACE
{

    // Destrutor padrão
    MainScreen::~MainScreen(){}

    // Construtor (inicializa corretamente a screen e a inodesGrid)
    MainScreen::MainScreen(INE5412_FS *systemFile, char* _readfile, char* _writefile) : Screen(800, 500, "Simple File System"), readfile(_readfile), writefile(_writefile), inodesGrid(5, 5, 230, 50)
    {
        fs = systemFile;
        setText({to_string(fs->get_disk()->size()*4096), to_string(fs->get_disk()->size()), to_string(fs->get_disk()->get_nreads()), to_string(fs->get_disk()->get_nwrites()), fs->get_disk()->get_image_name()});

        // Setar a imagem de fundo da tela
        if (!backgroundTexture.loadFromFile(ASSETS_DIR+"fundo_tela_principal.png"))
            cout << "Erro ao carregar a imagem de fundo!" << endl;

        backgroundSprite.setTexture(backgroundTexture);

        // Ajustando a imagem ao tamanho da janela
        Vector2u windowSize = window.getSize(); // Tamanho da janela
        backgroundSprite.setScale(
            static_cast<float>(windowSize.x) / backgroundTexture.getSize().x,  // Escala para largura
            static_cast<float>(windowSize.y) / backgroundTexture.getSize().y   // Escala para altura
        );

        // Seta a função de clique em um inode (abrindo a tela correspondente)
        inodesGrid.setButtonCallback([this](int value) {
            InodeScreen inodescreen(value, this->fs, &this->inodesGrid, readfile, writefile);
            this->window.setVisible(false); // Torna não visível a tela principal enquanto a tela de inode estiver aberta
            inodescreen.run();
            this->window.setVisible(true); // Torna novamente visível a tela principal
        });

        // Adiciona botões com seus respectivos: posição, tamanho e função de click (com lambda por ser um método da própria classe)
        addButton("Formatar", Vector2f(30, 335), Vector2f(150, 40), [this](void* data) {this->format_button_click(data);});
        addButton("Montar", Vector2f(30, 390), Vector2f(150, 40), [this](void* data) {this->mount_button_click(data);});
        addButton("Criar", Vector2f(30, 445), Vector2f(150, 40), [this](void* data) {this->create_button_click(data);});
    } // end construtor

    // Tratar eventos (cliques nos botões, etc.)
    void MainScreen::handleEvents() 
    {
        Event event;

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close(); // fecha a tela caso o evento seja do tipo Close

            // Detectar clique do mouse
            if (event.type == Event::MouseButtonPressed)
            {
                sf::Vector2f mousePos = window.mapPixelToCoords(Mouse::getPosition(window), inodesGrid.getView()); // Passa o vector com a posição adequada do mouse considerando a View inodesGrid
                inodesGrid.handleMouseClick(mousePos); // Trata cliques em inodes
                handleButtonClicks(event); // Trata cliques em botões
            }

            // Detectar rolagem do mouse
            if (event.type == Event::MouseWheelScrolled)
                inodesGrid.handleScroll(event.mouseWheelScroll.delta * -30); // Scroll na barra de rolagem dos inodes
        }
    }

    // Renderizar os elementos gráficos da tela
    void MainScreen::draw() 
    {
        window.clear(Color::White); // Cor de fundo default
        window.draw(backgroundSprite); // Renderizar a imagem de fundo
        window.draw(sizeText);
        window.draw(blockText);
        window.draw(writeText);
        window.draw(readText);
        window.draw(imageName); 

        inodesGrid.draw(window); // Renderiza grades de inode na tela
        drawButtons(); // Renderiza os botões

        window.display(); // Exibe na tela
    }

    // Loop principal da tela
    void MainScreen::run() 
    {
        // Enquanto a tela principal estiver aberta, os eventos são tratados e os elementos são renderizados
        while (window.isOpen())
        {
            handleEvents();
            draw();
        }
    }

    // Função chamada ao clicar no botão de formatação do disco
    void MainScreen::format_button_click(void* data)
    {
        if (!fs->fs_format())
        {
            AlertScreen(window, "Erro: sistema de arquivos montado!");
            return;
        }

        AlertScreen(window, "O disco foi formatado!", true);
        setText({to_string(fs->get_disk()->size()*4096), to_string(fs->get_disk()->size()), to_string(fs->get_disk()->get_nreads()), to_string(fs->get_disk()->get_nwrites()), fs->get_disk()->get_image_name()});
    }

    // Função chamada ao clicar no botão de montagem do sistema de arquivos
    void MainScreen::mount_button_click(void* data)
    {
        if (!fs->fs_mount())
        {
            AlertScreen(window, "Erro: sistema de arquivos nao\n pode ser montado!");
            return;
        }
        
        for (int inumber : fs->fs_list_inumbers()) 
            inodesGrid.addINumber(inumber);

        AlertScreen(window, "Sistema de arquivos montado!", true);
        setText({to_string(fs->get_disk()->size()*4096), to_string(fs->get_disk()->size()), to_string(fs->get_disk()->get_nreads()), to_string(fs->get_disk()->get_nwrites()), fs->get_disk()->get_image_name()});
    }

    // função chamada ao clicar no botão de criar um novo inode
    void MainScreen::create_button_click(void* data)
    {
        int new_inumber = fs->fs_create();
        if (!new_inumber)
        {
            AlertScreen(window, "Erro: inode nao pode ser criado!");
            return;
        }

        inodesGrid.addINumber(new_inumber);
        setText({to_string(fs->get_disk()->size()*4096), to_string(fs->get_disk()->size()), to_string(fs->get_disk()->get_nreads()), to_string(fs->get_disk()->get_nwrites()), fs->get_disk()->get_image_name()});
    }

    void MainScreen::setText(vector<string> data)
    {
        // Adiciona os textos estáticos
        sizeText.setString("Tamanho: "+data[0]+" B");
        blockText.setString("N. blocos: "+data[1]);
        readText.setString("N. leituras: "+data[2]);
        writeText.setString("N. escritas: "+data[3]);
        imageName.setString(data[4]);

        // Texto estático para block
        blockText.setFont(font);
        blockText.setCharacterSize(16);
        blockText.setPosition(30, 260);
        blockText.setFillColor(Color::Black);

        // ------------------------ textos estáticos --------------------------------
        // Texto estático para size
        sizeText.setFont(font); // Usar o atributo 'font' herdado da classe 'Screen'
        sizeText.setCharacterSize(16);
        sizeText.setPosition(30, 240);
        sizeText.setFillColor(Color::Black);

        // Texto estático para block
        blockText.setFont(font);
        blockText.setCharacterSize(16);
        blockText.setPosition(30, 260);
        blockText.setFillColor(Color::Black);

        // Texto estático para write
        writeText.setFont(font);
        writeText.setCharacterSize(16);
        writeText.setPosition(30, 280);
        writeText.setFillColor(Color::Black);

        // Texto estático para read
        readText.setFont(font);
        readText.setCharacterSize(16);
        readText.setPosition(30, 300);
        readText.setFillColor(Color::Black);

        imageName.setFont(font);
        imageName.setCharacterSize(25);
        imageName.setPosition(60, 180);
        imageName.setFillColor(Color::Black);
    } //end set
} // end namespace GRAPHIC_INTERFACE
