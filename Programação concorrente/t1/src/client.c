/**
 * Esse arquivo tem como objetivo a implementação do cliente em um parque.
 * Você pode criar novas funções dentro desse arquivo caso julgue necessário.
 * ATENÇÃO: NÃO APAGUE OU EDITE O NOME OU O(S) ARGUMENTO(S) DAS FUNÇÕES FORNECIDAS
*/

#include <stdio.h>
#include <stdlib.h>

#include "defs.h"
#include "client.h"
#include "queue.h"
#include "shared.h"


// Função para escolher um brinquedo aleatório
toy_t *random_toy(client_t *self) {
    int n_toys = self->number_toys; // recebe o número de brinquedos disponíveis
    int random_toy_index = rand() % n_toys; // gera um número aleatório de brinquedos dentro do intervalo fornecido
    toy_t *toy = self->toys[random_toy_index]; // recebe o brinquedo aleatório
    
    return toy;
}

// Thread que implementa o fluxo do cliente no parque.
void *enjoy(void *arg) {
    client_t *self = (client_t *) arg; // Convertendo o ponteiro vazio para o tipo client_t

    queue_enter(self); // Cliente entra na fila da bilheteria

    debug("[ENTER] - Turista [%d] entrou no parque.\n", self->id); // Após ser atendido pela bilheteria, o cliente entra no parque

    while (self->coins > 0) { // Enquanto o cliente tiver moedas

        toy_t *chosen_toy = random_toy(self); // Cliente escolhe um brinquedo aleatório
        
        enter_toy(chosen_toy, self, FALSE); // Cliente entra no brinquedo
        exit_toy(chosen_toy, self); // Cliente sai do brinquedo
        
    }

    debug("[EXIT] - O turista saiu do parque.\n"); // Após gastar todas as moedas, o cliente sai do parque

    pthread_exit(NULL); // Encerra a thread do cliente (cliente saiu do parque)
}


// Funcao onde o cliente compra as moedas para usar os brinquedos
void buy_coins(client_t *self){
    int random_coins = rand() % (MAX_COINS) + 1; // gera um número aleatório de moedas (no mínimo 1)
    
    pthread_mutex_lock(&self->mutex); // lock no mutex do cliente atual
    self->coins = random_coins; // atritbui o número de moeadas
    pthread_mutex_unlock(&self->mutex); // libera o mutex
}

// Função onde o cliente espera a liberacao da bilheteria para adentrar ao parque.
void wait_ticket(client_t *self){
    sem_post(&sem_sync); // Libera o semáforo de sincronização com a bilheteria (ou seja, as bilheterias só irão ser criadas após todos os clientes serem adicionados na fila)
    sem_wait(&sem_clients[self->id-1]); // Cliente não entra no parque enquanto a bilheteria não liberar
}

// Funcao onde o cliente entra na fila da bilheteria
void queue_enter(client_t *self){
    pthread_mutex_lock(&self->mutex); // Lock no mutex do cliente atual
    enqueue(gate_queue, self->id); // entra na fila
    debug("[WAITING] - Turista [%d] entrou na fila do portao principal\n", self->id);
    pthread_mutex_unlock(&self->mutex); // Libera o mutex

    wait_ticket(self); // Cliente espera a liberação da bilheteria

    buy_coins(self); // Cliente compra as moedas

    debug("[CASH] - Turista [%d] comprou [%d] moedas.\n", self->id, self->coins);
}

// Essa função recebe como argumento informações sobre o cliente e deve iniciar os clientes.
void open_gate(client_args *args){ 

    client_t **clients = args->clients;
    int n = args->n;
    clients_threads = malloc(n * sizeof(pthread_t *)); // Cria uma estrutura de n threads para os clientes

    // Inicializa cada cliente
    for (int i = 0; i < n; i++){

        // inicializa semaforo e mutex
        pthread_mutex_init(&clients[i]->mutex, NULL);
        sem_init(&sem_clients[clients[i]->id-1], 0, 0);

        // adiciona a thread do cliente na estrutura de threads
        pthread_t *client_thread = malloc(sizeof(pthread_t));
        clients_threads[i] = client_thread;

        
        pthread_create(client_thread, NULL, enjoy, clients[i]);
    }

    clients_shared = args;
}

// Essa função deve finalizar os clientes
void close_gate(){ 

    client_t **clients = clients_shared->clients;
    int n = clients_shared->n;

    for (int i = 0; i < n; i++) {
        pthread_join(*clients_threads[i], NULL); //encerra a thread do cliente
        sem_close(&sem_clients[clients[i]->id-1]); //fecha o semaforo da fila
        pthread_mutex_destroy(&clients[i]->mutex); //destroi o mutex do cliente
    }

    sem_destroy(&sem_sync); // Destroi o semáforo de sincronização

    // Ativa funcionário que desativa as threads de brinquedos já que não há mais clientes no parque
    int num_toys = clients[0]->number_toys;
    toy_t **toys = clients[0]->toys;

    for (int i = 0; i < num_toys; i++) {
        enter_toy(toys[i], NULL, TRUE); // função enter toy só que com a flag de funcionario para TRUE
    }
}