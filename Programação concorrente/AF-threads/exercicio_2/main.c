#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <pthread.h>



// as operações devem ser separadas p cada thread. Se o numero de threads for menor do que a quantidade de 
// elementos a serem operados, temos que decidir o que fazer com ele (uma thread trabalha mais q as outras)

// Lê o conteúdo do arquivo filename e retorna um vetor E o tamanho dele
// Se filename for da forma "gen:%d", gera um vetor aleatório com %d elementos
//
// +-------> retorno da função, ponteiro para vetor malloc()ado e preenchido
// | 
// |         tamanho do vetor (usado <-----+
// |         como 2o retorno)              |
// v                                       v
double* load_vector(const char* filename, int* out_size);

// Avalia o resultado no vetor c. Assume-se que todos os ponteiros (a, b, e c)
// tenham tamanho size.
void avaliar(double* a, double* b, double* c, int size);

typedef struct {
    double*a;
    double*b; 
    double*c;
    int i_inicio;
    int i_final;
}Variaveis;

void* soma(void *variaveis) {
    // converte o ponteiro void variaveis para um ponteiro de struct variaveis
    Variaveis *v = (Variaveis*)variaveis; //(Variaveis*)variaveis variavies é um ponteiro do tipo Variaveis que vai ser atibuido a v

        for (int i = v->i_inicio; i < v->i_final; ++i) {
            v->c[i] = v->a[i] + v->b[i];
    }
    return NULL;
}

int main(int argc, char* argv[]) {
    // Gera um resultado diferente a cada execução do programa
    // Se **para fins de teste** quiser gerar sempre o mesmo valor
    // descomente o srand(0)
    srand(time(NULL)); //valores diferentes
    //srand(0);        //sempre mesmo valor

    //Temos argumentos suficientes?
    if(argc < 4) {
        printf("Uso: %s n_threads a_file b_file\n"
               "    n_threads    número de threads a serem usadas na computação\n"
               "    *_file       caminho de arquivo ou uma expressão com a forma gen:N,\n"
               "                 representando um vetor aleatório de tamanho N\n",
               argv[0]);
        return 1;
    }
  
    //Quantas threads?
    int n_threads = atoi(argv[1]);
    if (!n_threads) {
        printf("Número de threads deve ser > 0\n");
        return 1;
    }
    //Lê números de arquivos para vetores alocados com malloc
    int a_size = 0, b_size = 0;
    double* a = load_vector(argv[2], &a_size);
    if (!a) {
        //load_vector não conseguiu abrir o arquivo
        printf("Erro ao ler arquivo %s\n", argv[2]);
        return 1;
    }
    double* b = load_vector(argv[3], &b_size);
    if (!b) {
        printf("Erro ao ler arquivo %s\n", argv[3]);
        return 1;
    }
    
    //Garante que entradas são compatíveis
    if (a_size != b_size) {
        printf("Vetores a e b tem tamanhos diferentes! (%d != %d)\n", a_size, b_size);
        return 1;
    }
    //Cria vetor do resultado 
    double* c = malloc(a_size*sizeof(double));

    // Calcula com uma thread só. Programador original só deixou a leitura 
    // do argumento e fugiu pro caribe. É essa computação que você precisa 
    // paralelizar

    if(n_threads > a_size) { // se o numero de threads for maior que a quantidade de elementos a serem operados
        n_threads = a_size;
    }
    pthread_t thread[n_threads]; //cria um array de threads
    Variaveis variaveis_array[n_threads]; //cria um array de structs para passar os argumentos para as threads
    

    for (int i = 0; i < n_threads; i++) {
        variaveis_array[i].a = a;
        variaveis_array[i].b = b;
        variaveis_array[i].c = c;
        variaveis_array[i].i_inicio = i * (a_size / n_threads);
        variaveis_array[i].i_final = variaveis_array[i].i_inicio + (a_size / n_threads); // Define o i_final normalmente

        // Se esta é a última thread e o número de threads é ímpar
        if (i == n_threads - 1 && n_threads % 2 != 0) {
            variaveis_array[i].i_final = a_size; // A última thread processa o restante
            }

        pthread_create(&thread[i], NULL, soma, (void*)&variaveis_array[i]);
        }
  
  
    for (int i = 0; i < n_threads; ++i) {
        pthread_join(thread[i],NULL); //espera todas as threads terminarem
    }
        

    //    +---------------------------------+
    // ** | IMPORTANTE: avalia o resultado! | **
    //    +---------------------------------+
    avaliar(a, b, c, a_size);
    

    //Importante: libera memória
    free(a);
    free(b);
    free(c);

    return 0;
}
