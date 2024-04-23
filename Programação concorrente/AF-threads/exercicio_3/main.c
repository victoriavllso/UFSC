#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <pthread.h>

// Lê o conteúdo do arquivo filename e retorna um vetor E o tamanho dele
// Se filename for da forma "gen:%d", gera um vetor aleatório com %d elementos
//
// +-------> retorno da função, ponteiro para vetor malloc()ado e preenchido
// | 
// |         tamanho do vetor (usado <-----+
// |         como 2o retorno)              |
// v                                       v
double* load_vector(const char* filename, int* out_size);


// Avalia se o prod_escalar é o produto escalar dos vetores a e b. Assume-se
// que ambos a e b sejam vetores de tamanho size.
void avaliar(double* a, double* b, int size, double prod_escalar);

typedef struct{

    double* a;
    double* b;
    double soma_parcial;
    int i_inicio;
    int i_final;
}Variaveis;

void* produto_escalar(void*variaveis) {
    Variaveis *v = (Variaveis*)variaveis;
    for (int i = v->i_inicio; i < v->i_final; i++) {
        v->soma_parcial += v->a[i] * v->b[i];
    }
    return NULL;
}


int main(int argc, char* argv[]) {
    srand(time(NULL));

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

    if (n_threads > a_size) {
        n_threads = a_size;
    }

    //Calcula produto escalar. Paralelize essa parte
    pthread_t thread[n_threads];
    Variaveis variaveis_array[n_threads];
    int elementos_por_thread = a_size / n_threads;
    int elementos_restantes = a_size % n_threads;

    int inicio = 0;
    for (int i = 0; i < n_threads; i++) {
        variaveis_array[i].a = a;
        variaveis_array[i].b = b;
        variaveis_array[i].soma_parcial = 0; // Inicializa a soma parcial
        variaveis_array[i].i_inicio = inicio;
        int tamanho_atual = elementos_por_thread;
        if (i < elementos_restantes) { // se a thread atual for menor que os elementos restantesm significa que está entre as primeiras ex: 10/3 = 3 e sobra 1
            tamanho_atual++; // Distribui os elementos restantes igualmente entre as primeiras threads
        }
        variaveis_array[i].i_final = inicio + tamanho_atual;
        inicio += tamanho_atual;
        pthread_create(&thread[i], NULL, produto_escalar, (void*)&variaveis_array[i]);
    }
    double result = 0;

    for(int i = 0; i< n_threads; i++) {
        
        pthread_join(thread[i], NULL); //espera a thread terminar
        result+= variaveis_array[i].soma_parcial; // faz a somar parcial
    }
    
    //    +---------------------------------+
    // ** | IMPORTANTE: avalia o resultado! | **
    //    +---------------------------------+
    avaliar(a, b, a_size, result);

    //Libera memória
    free(a);
    free(b);

    return 0;
}
