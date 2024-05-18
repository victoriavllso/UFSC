#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <time.h>
#include <stdlib.h>

FILE* out;
sem_t sem_A, sem_B;

void *thread_a(void *args) {
    for (int i = 0; i < *(int*)args; ++i) {
	//      +---> arquivo (FILE*) destino
	//      |    +---> string a ser impressa
	//      v    v
        sem_wait(&sem_A); // decrementa (no N do semáforo) de quantos A's podem ser impressos (se estiver no limite (0), não será impresso até que seja incrementado de B)

        fprintf(out, "A");
        // Importante para que vocês vejam o progresso do programa
        // mesmo que o programa trave em um sem_wait().
        fflush(stdout);

        sem_post(&sem_B); //inrementa (no N) de quantos B's podem ser impressos
    }
    return NULL;
}

void *thread_b(void *args) {
    for (int i = 0; i < *(int*)args; ++i) {
        sem_wait(&sem_B); // decrementa (no N do semáforo) de quantos B's podem ser impressos (se estiver no limite (0), não será impresso até que seja incrementado de A)

        fprintf(out, "B");
        fflush(stdout);

        sem_post(&sem_A);  // incrementa (no N) quantos A's podem ser impressos    }
    return NULL;
}

int main(int argc, char** argv) {
    if (argc < 2) {
        printf("Uso: %s [ITERAÇÕES]\n", argv[0]);
        return 1;
    }
    int iters = atoi(argv[1]);
    srand(time(NULL));
    out = fopen("result.txt", "w");
    
    //inicia os semáforos (ambos começam com 1 pois é o t)
    
    sem_init(&sem_A, 0, 1);
    sem_init(&sem_B, 0, 1);


    pthread_t ta, tb;

    // Cria threads
    pthread_create(&ta, NULL, thread_a, &iters);
    pthread_create(&tb, NULL, thread_b, &iters);

    
    // Espera pelas threads
    pthread_join(ta, NULL);
    pthread_join(tb, NULL);

    //Imprime quebra de linha e fecha arquivo
    fprintf(out, "\n");
    fclose(out);

    // Destrói semáforos
    sem_destroy(&sem_A);
    sem_destroy(&sem_B);

    return 0;
}
