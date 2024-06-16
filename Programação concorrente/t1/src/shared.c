#include "shared.h"

#include <queue.h>


// Você pode declarar novas funções (ou variaveis compartilhadas) aqui

// Os detalhes de cada variável estão no arquivo shared.h

// == BRINQUEDOS ==
toy_args *toys_shared = {NULL};

// == CLIENTES ==
client_args *clients_shared = {NULL};
sem_t *sem_clients = {NULL};
pthread_t **clients_threads = {NULL};

// == TICKETS ==
tickets_args *tickets_shared = {NULL};
pthread_mutex_t queue_mutex = PTHREAD_MUTEX_INITIALIZER;
sem_t sem_sync = {0};
int num_clients = 0;

/**********************************
 *          ATENÇÃO               *
 *   NÃO EDITAR ESSAS VARIAVEIS   *
 *          ATENÇÃO               *
 *********************************/
Queue *gate_queue = NULL;