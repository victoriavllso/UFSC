/**
 * Esse arquivo tem como objetivo a implementação da bilheteria em um parque.
 * Você pode criar novas funções dentro desse arquivo caso julgue necessário.
 * ATENÇÃO: NÃO APAGUE OU EDITE O NOME OU O(S) ARGUMENTO(S) DAS FUNÇÕES FORNECIDAS.
*/
#include <stdio.h>
#include <stdlib.h>
#include <tickets.h>
#include <unistd.h>

#include <queue.h>
#include "shared.h"


// Thread que implementa uma bilheteria
void *sell(void *args){
    ticket_t *ticket = (ticket_t*) args; // converte args (ponteiro vazio) para ponteiro do tipo ticket_t

    debug("[INFO] - Bilheteria Abriu!\n");

    // Bilheteria fica em loop enquanto não houver mais clientes na fila
    while (TRUE) {

        // Zona Crítica - Apenas uma bilheteria por vez deverá interagir com a fila
        pthread_mutex_lock(&queue_mutex); // lock no mutex global com todas as bilheterias
        int client_id = dequeue(gate_queue); //retira o cliente da fila
        pthread_mutex_unlock(&queue_mutex); // libera o mutex

        if (client_id == -1) { // Se não houver mais clientes na fila
            break; // Encerra a bilheteria
        }
        
        // Simula tempo de atendimento 
        sleep(rand() % 5 + 1);

        // Libera cliente para comprar moedas e acessar o parque
        debug("[INFO] - Bilheteria [%d] atendeu o turista [%d].\n", ticket->id, client_id); // Imprime a mensagem de atendimento do cliente
        sem_post(&sem_clients[client_id-1]); // libera o cliente parado em wait_ticket()

    }

    debug("[INFO] - Bilheteria [%d] Fechou!\n", ticket->id); 
    pthread_exit(NULL); 
}

// Essa função recebe como argumento informações sobre a bilheteria e deve iniciar os atendentes.
void open_tickets(tickets_args *args){

    // Espera todos os clientes serem adicionados na fila (para não acontecer da bilheteria iniciar já fechando)
    for (int i = 0; i < num_clients; i++) {
        sem_wait(&sem_sync); 
    }

    int n = args->n; // recebe a quantidade de bilheterias
    ticket_t **tickets = args->tickets; // recebe o array de bilheterias
   
    for (int i = 0; i < n; i++) {
        pthread_mutex_init(&queue_mutex, NULL); // inicia o mutex global das bilheterias
        pthread_create(&tickets[i]->thread, NULL, sell, (void*) tickets[i]); // inicia as bilheterias para executar a função sell
    }

    tickets_shared = args; // atribui o array de atendentes para a variável global (será usado para encerrar as bilheterias)
}

// Essa função deve finalizar a bilheteria
void close_tickets(){
    ticket_t **tickets = tickets_shared->tickets; //recebe o array de atendentes
    int n = tickets_shared->n; //recebe a quantidade de atendentes

    for (int i = 0; i < n; i++) {
        pthread_mutex_destroy(&queue_mutex); // destroi o mutex global
        pthread_join(tickets[i]->thread, NULL); // encerra a thread das bilheterias
    }
}