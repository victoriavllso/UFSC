#include "mainScreen.hpp"

#include <SFML/Graphics.hpp>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

int main( int argc, char *argv[] )
{
	if(argc != 5)
	{
		cout << "use: " << argv[0] << " <diskfile> <nblocks> <readfile> <writefile>\n";
		return 1;
	}

	Disk disk(argv[1], atoi(argv[2]));

    INE5412_FS fs(&disk);
    
    GRAPHIC_INTERFACE::MainScreen mainScreen(&fs, argv[3], argv[4]);  // Cria a tela principal
    mainScreen.run();  // Inicia o loop da tela principal
    
    return 0;
}