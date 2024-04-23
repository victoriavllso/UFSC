#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <pthread.h>

// todas as threads fazem as mesmas coisas

//                 (main)      
//                    |
//    +----------+----+------------+
//    |          |                 |   
// worker_1   worker_2   ....   worker_n


// ~~~ argumentos (argc, argv) ~~~
// ./program n_threads

// ~~~ printfs  ~~~
// main thread (após término das threads filhas): "Contador: %d\n"
// main thread (após término das threads filhas): "Esperado: %d\n"

// Obs:
// - pai deve criar n_threds (argv[1]) worker threads 
// - cada thread deve incrementar contador_global (operador ++) n_loops vezes
// - pai deve esperar pelas worker threads  antes de imprimir!



int contador_global = 0;

void* incrementa_contador(void* n_loops){ //a função recebe void *  e recebe void*
    //converte  'n_loop' de void pointer para int pointer e pega o conteudo que está no endereço de int pointer
    int a= *((int*)n_loops);

    for (int i = 0; i < a; i++) {
        ++contador_global;
    }    
    pthread_exit(NULL); //a thread encerra sua execução
}


int main(int argc, char* argv[]) {
    if (argc < 3) {
        printf("n_threads é obrigatório!\n");
        printf("Uso: %s n_threads n_loops\n", argv[0]);
        return 1;
    }

    int n_threads = atoi(argv[1]);
    int n_loops = atoi(argv[2]);
//(void*) &A -> argumento que deve ser passado para create, ou seja, convertendo um um ponteiro de int para um ponteiro de void

    //...
    pthread_t thread[n_threads];// cria um array de threads 

   // int p[n_threads]; //crio um array de inteiros para passar o endereço de cada elemento para a função incrementa_contador
    for(int i = 0; i < n_threads; i++) {
      
        pthread_create(&thread[i],NULL, incrementa_contador, (void*) &n_loops); //criando uma thread que incrementa um contador global
        
    }
    
    for(int i = 0; i < n_threads; i++) {
    pthread_join(thread[i], NULL); // após todas as threads terminarem a sua execução, a thread pai finaliza o processo
    }
    printf("Contador: %d\n", contador_global);
    printf("Esperado: %d\n", n_threads*n_loops);
    return 0;
}
