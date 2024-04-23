#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>

//       (pai)      
//         |        
//    +----+----+
//    |         |   
// filho_1   filho_2


// ~~~ printfs  ~~~
// pai (ao criar filho): "Processo pai criou %d\n"
//    pai (ao terminar): "Processo pai finalizado!\n"
//  filhos (ao iniciar): "Processo filho %d criado\n"

// Obs:
// - pai deve esperar pelos filhos antes de terminar!

void cria_filho() {
    pid_t pid = fork(); // criando um processo filho
    if (pid == 0) { // se o pid for 0, então é o processo filho
        printf("Processo pai criou %d\n", getpid()); // printando o pid do processo pai
        printf("Processo filho %d criado\n", getpid()); // printando o pid do processo filho
        exit(0); // finalizando o processo filho
    }
}

int main(int argc, char** argv) {

    // ....

    /*************************************************
     * Dicas:                                        *
     * 1. Leia as intruções antes do main().         *
     * 2. Faça os prints exatamente como solicitado. *
     * 3. Espere o término dos filhos                *
     *************************************************/

    for (int i = 0; i<2; i++) cria_filho(); // criando dois processos filhos

    while (wait(NULL) >= 0); // esperando os processos filhos finalizarem

    printf("Processo pai finalizado!\n");
    
    return 0;
}