/**
 * Esse arquivo tem como objetivo a implementação de um brinquedo em um parque.
 * Você pode criar novas funções dentro desse arquivo caso julgue necessário.
 * ATENÇÃO: NÃO APAGUE OU EDITE O NOME OU O(S) ARGUMENTO(S) DAS FUNÇÕES FORNECIDAS
*/

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

#include "toy.h"
#include "shared.h"

// Função para o cliente entrar no brinquedo
void enter_toy(toy_t *toy, client_t *client, int flag_finish) {

    // Esta flag será ativada APENAS pelo trabalhador que encerra o parque para finalizar os brinquedos (após todas as threads de clientes serem encerradas)
    if (flag_finish == TRUE) {
        toy->clients_number = -1; // define que o brinquedo está fechando
        sem_post(&toy->sem_inicio); // libera para o brinquedo avançar o semáforo
        return;
    }

    // VERIFICAÇÃO DE ESPAÇO: se não tiver espaço, o cliente fica aguardando
    sem_wait(&toy->sem_capacidade);

    // VERIFICAÇÃO DE BRINQUEDO ABERTO: se o brinquedo não estiver aberto (ex: atração em movimento), o cliente fica aguardando
    pthread_mutex_lock(&toy->mutex_cond_entrada);
    while (!(toy->open)) {
        pthread_cond_wait(&toy->cond_entrada, &toy->mutex_cond_entrada); // A thread do cliente é "congelada" até que todas as condições sejam verdade
    }
    pthread_mutex_unlock(&toy->mutex_cond_entrada);

    // Cliente entra no brinquedo
    client->coins--; // Debita das moedas do cliente (não há mutex pois não há condição de corrida)

    debug("[TOY ENTER] - Turista [%d] entrou no brinquedo [%d] e restam [%d] moedas.\n", client->id, toy->id, client->coins);

    pthread_mutex_lock(&toy->mutex); 
    toy->clients_number++; // Adiciona um cliente novo no brinquedo (diminuindo sua capacidade maxima)
    if (toy->clients_number == 1) {
        sem_post(&toy->sem_inicio); // libera para o brinquedo começar a rodar apenas se ele for o primeiro cliente
    }
    pthread_mutex_unlock(&toy->mutex);
}

// Função auxiliar para o cliente sair do brinquedo
void exit_toy(toy_t *toy, client_t *client){

    // Espera o brinquedo acabar de rodar
    pthread_mutex_lock(&toy->mutex_cond_saida);
    while (!(toy->saida)) {
        pthread_cond_wait(&toy->cond_saida, &toy->mutex_cond_saida); // A thread do cliente é "congelada" até que a saída seja liberada
    }
    pthread_mutex_unlock(&toy->mutex_cond_saida);


    // Decrementa o número de clientes no brinquedo
    pthread_mutex_lock(&toy->mutex);
    toy->clients_number--;
    if (toy->clients_number == 0) {
        sem_post(&toy->sem_saida); // libera para o brinquedo continuar a próxima iteração
    }
    pthread_mutex_unlock(&toy->mutex);

    
    debug("[TOY EXIT] - Turista [%d] saiu do brinquedo [%d].\n", client->id, toy->id);
    sem_post(&toy->sem_capacidade); // libera a capacidade do brinquedo
}


// Thread que o brinquedo vai usar durante toda a simulacao do sistema
void *turn_on(void *args){
    toy_t *toy = (toy_t *) args;

    // ------ Inicia o brinquedo ------ //
    debug("[ON] - O brinquedo  [%d] foi ligado.\n", toy->id);

    // Loop para fazer o brinquedo rodar enquanto o parque não estiver vazio
    while (TRUE){
        // ------ O brinquedo irá esperar turistas ------ //

        toy->open = TRUE; // define que o brinquedo está aberto a novos clientes
        pthread_cond_broadcast(&toy->cond_entrada); // avisa para as threads de clientes que estão esperando que o brinquedo está aberto

        sem_wait(&toy->sem_inicio); // só dá inicio quando ao menos 1 cliente entrar
        sleep(rand() % MAX_WAITING_TIME + 1); // dá um tempo para que dê chance de mais clientes entrarem

        // essa condição só é ativada pelo trabalhador que encerra o parque para finalizar este brinquedo
        if (toy->clients_number == -1) {
            break;
        }

        // ------ Atração iniciou ------ //
        toy->open = FALSE; // define que o brinquedo está rodando (não pode mais entrar clientes)

        debug("[TOY START] - A atração do brinquedo [%d] começou com [%d/%d] turistas.\n", toy->id, toy->clients_number, toy->capacity);

        // Simula o tempo que o brinquedo fica rodando
        sleep(rand() % MAX_RUNNING_TIME + 1);

        // ------ Atração terminou ------ //
        debug("[TOY END] - A atração do brinquedo [%d] terminou.\n", toy->id);

        // ---- Sincronização de saída do brinquedo ----

        // Avisa para todas as threads que os clientes podem sair
        toy->saida = TRUE; // variavel condicional para saída
        pthread_cond_broadcast(&toy->cond_saida); 

        sem_wait(&toy->sem_saida); // espera o sinal do último cliente a sair do brinquedo para poder continuar para a próxima iteração

        toy->saida = FALSE; // define que a saída de clientes não está mais liberada
    }

    // ------ Desliga o brinquedo ------ //
    debug("[OFF] - O brinquedo [%d] foi desligado.\n", toy->id);

    pthread_exit(NULL);
}


// Essa função recebe como argumento informações e deve iniciar os brinquedos.
void open_toys(toy_args *args){

    toy_t **toys = args->toys;
    int n = args->n;

    // Inicializa cada brinquedo
    for (int i = 0; i < n; i++){

        // inicializa threads, mutex e semaforos
        pthread_mutex_init(&toys[i]->mutex, NULL);
        pthread_mutex_init(&toys[i]->mutex_cond_entrada, NULL);
        pthread_mutex_init(&toys[i]->mutex_cond_saida, NULL);
        sem_init(&toys[i]->sem_inicio, 0, 0);
        sem_init(&toys[i]->sem_saida, 0, 0);
        sem_init(&toys[i]->sem_capacidade, 0, toys[i]->capacity);
        pthread_cond_init(&toys[i]->cond_entrada, NULL);
        pthread_cond_init(&toys[i]->cond_saida, NULL);
        pthread_create(&toys[i]->thread, NULL, turn_on, toys[i]);
    }

    toys_shared = args; // Variavel compartilhavel para fechar posteriormente
}

// Desligando os brinquedos
void close_toys(){
    toy_t **toys = toys_shared->toys;
    int n = toys_shared->n;

    // Desliga as threads e destroi os semaforos e mutex
    for (int i = 0; i < n; i++){
        pthread_join(toys[i]->thread, NULL);
        pthread_mutex_destroy(&toys[i]->mutex);
        pthread_mutex_destroy(&toys[i]->mutex_cond_entrada);
        pthread_mutex_destroy(&toys[i]->mutex_cond_saida);
        pthread_cond_destroy(&toys[i]->cond_entrada);
        pthread_cond_destroy(&toys[i]->cond_saida);
        sem_destroy(&toys[i]->sem_inicio);
        sem_destroy(&toys[i]->sem_capacidade);
        sem_destroy(&toys[i]->sem_saida);
    }
}