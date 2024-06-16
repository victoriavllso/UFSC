#ifndef __SHARED_H__
#define __SHARED_H__

#include <defs.h>


// Você pode declarar novas funções (ou variaveis compartilhadas) aqui

// == BRINQUEDOS ==
extern toy_args *toys_shared; // Variavel para compartilhar threads
void enter_toy(toy_t *toy, client_t *client, int flag_finish);  // função utilizada pelo cliente para adicionar um cliente no brinquedo
void exit_toy(toy_t *toy, client_t *client);                    // função utilizada pelo cliente para remover um cliente do brinquedo

// == CLIENTES ==
extern client_args *clients_shared; // Variavel para compartilhar threads
extern sem_t *sem_clients;          // Estrutura de semáforos para liberar clientes pela bilheteria
extern pthread_t **clients_threads; // Array de threads dos clientes

// == TICKETS ==
extern tickets_args *tickets_shared; // Variavel para compartilhar threads
extern pthread_mutex_t queue_mutex;  // Mutex para controlar zona crítica da fila de clientes no ticket
extern sem_t sem_sync;               // Semáforo para sincronizar a entrada dos clientes no parque (As bilheterias só iniciam depois que todos os clientes iniciaram)
extern int num_clients;              // Número de clientes no parque


/**********************************
 *          ATENÇÃO               *
 *   NÃO EDITAR ESSAS VARIAVEIS   *
 *          ATENÇÃO               *
 *********************************/
extern Queue *gate_queue;

#endif