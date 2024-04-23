#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

//                          (principal)
//                               |
//              +----------------+--------------+
//              |                               |
//           filho_1                         filho_2
//              |                               |
//    +---------+-----------+          +--------+--------+
//    |         |           |          |        |        |
// neto_1_1  neto_1_2  neto_1_3     neto_2_1 neto_2_2 neto_2_3

// ~~~ printfs  ~~~
//      principal (ao finalizar): "Processo principal %d finalizado\n"
// filhos e netos (ao finalizar): "Processo %d finalizado\n"
//    filhos e netos (ao inciar): "Processo %d, filho de %d\n"

// Obs:
// - netos devem esperar 5 segundos antes de imprmir a mensagem de finalizado (e terminar)
// - pais devem esperar pelos seu descendentes diretos antes de terminar



void cria_neto(int id_pai) {
    pid_t pid = fork(); // criando um processo neto

    if (pid == 0) { // se o pid for 0, então é o processo neto
        printf("Processo NETO %d, filho de %d\n", getpid(), id_pai); // printando o pid do processo neto e o pid do processo pai
        sleep(5); // esperando 5 segundos antes de finalizar
        printf("Processo %d finalizado\n", getpid());
        exit(0); // finalizando o processo neto
    }
}

void cria_filho(int id_pai) {
    pid_t pid = fork(); // criando um processo filho

    if (pid == 0) { // se o pid for 0, então é o processo filho
        printf("Processo FILHO %d, filho de %d\n", getpid(), id_pai);
        for (int j = 0; j < 3; j++) {
            cria_neto(getpid()); // criando três processos netos
        }
        while (wait(NULL) >= 0); // esperando os netos acabarem
        printf("Processo %d finalizado\n", getpid()); // printando o pid do processo filho
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


    for (int i = 0; i < 2; i++) {
        cria_filho(getpid()); // criando 2 processos filhos
    }

    while (wait(NULL) >= 0); // esperando os processos filhos finalizarem

    printf("Processo PRINCIPAL %d finalizado\n", getpid());   
    return 0;
}
