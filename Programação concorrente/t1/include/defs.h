#ifndef __DEFS_H__
#define __DEFS_H__

/* Essa biblioteca implementa definicoes que sao usadas pelo programa. */
/* ATENÇÃO: NÃO APAGUE OU EDITE O NOMES FORNECIDOS */

#include <pthread.h>
#include <semaphore.h>

#define TRUE 1              // Em C nao temos True ou False (como no Python). Usamos macro TRUE para True (como no Python). 
#define FALSE 0             // e FALSE para False (como no Python).


#define MAX_CAPACITY_TOY    10  // Capacidade maxima dos brinquedos.
#define MIN_CAPACITY_TOY    5   // Capacidade minima dos brinquedos.
#define MAX_COINS           5  // Maximo de moedas que um cliente pode comprar

#define MAX_WAITING_TIME    3   // Tempo de espera para o brinquedo rodar.
#define MAX_RUNNING_TIME    10  // Tempo que o brinquedo fica rodando.

#define DEBUG               1   //  Alterne (0 or 1) essa macro se voce espera desabilitar todas as mensagens de debug.


/* Adicione as estruturas de sincronização que achar necessárias */
typedef struct ticket{
  pthread_t thread;         // A thread do funcionário que fica na bilheteria.
  int id;                   // O id do funcionario que fica na bilheteria.
  sem_t sem_atendimento;          //semaforo para controlar o atendimento
  pthread_mutex_t mutex;
} ticket_t;

/* Adicione as estruturas de sincronização que achar necessárias */
typedef struct toy{
  int id;                   // O id de um brinquedo.
  int capacity;             // A capacidade total de um brinquedo.
  int clients_number;       // Numero de clientes no brinquedo.
  int open;                 // Flag para indicar se o brinquedo está aberto a clientes.
  int saida;                // Flag para indicar que os clientes podem sair do brinquedo.
  pthread_t thread;         // A thread de um brinquedo.
  pthread_mutex_t mutex;    // Mutex para controlar o acesso a variavel compartilhada de brinquedos.
  pthread_mutex_t mutex_cond_entrada; // Mutex para controlar o acesso a variavel de condição de entrada.
  pthread_mutex_t mutex_cond_saida; // Mutex para controlar o acesso a variavel de condição de saída.
  pthread_cond_t cond_entrada; // Variável de condição para controlar a entrada dos clientes.
  pthread_cond_t cond_saida; // Variável de condição para controlar a saída dos clientes.
  sem_t sem_capacidade;     // O semáforo para controle de capacidade de um brinquedo.
  sem_t sem_inicio;         // O semáforo para controle de início de um brinquedo. (certeza de que ao menos 1 entrou)
  sem_t sem_saida;          // O semáforo para controle de continuação de um brinquedo. (certeza de que todo mundo saiu)
} toy_t;

/* Adicione as estruturas de sincronização que achar necessárias */
typedef struct client{
  int id;                   // O id do cliente.
  int coins;                // Quantidade de moedas do cliente.
  int number_toys;          // Numero de brinquedos disponiveis.
  toy_t **toys;             // (Copy) Array de brinquedos.
  pthread_mutex_t mutex;    // mutex do cliente
} client_t;

/* Adicione as estruturas de sincronização que achar necessárias */
typedef struct{
  ticket_t **tickets;        // Array de funcionarios.                       
  int n;                    // Quantidade de funcionários da bilheteria.
} tickets_args;

/* Adicione as estruturas de sincronização que achar necessárias */
typedef struct{
  toy_t **toys;             // Array de brinquedos.
  int n;                    // Quantidade de brinquedos.
} toy_args;

/* Adicione as estruturas de sincronização que achar necessárias */
typedef struct{
  client_t **clients;       // Array de clientes.
  int n;                    // Quantidade de clientes.
} client_args;


/**************************************************
 *                    ATENÇÃO                     *
 *   NÃO EDITAR ESSE ARQUIVO A PARTIR DESTE PONTO *
 *                    ATENÇÃO                     *
 *************************************************/

// Estrutura da fila
typedef struct node {
  int data;                 // Dado da fila.
  struct node *next;        // Objeto do proximo item da fila.
} Node;

// Fila
typedef struct queue {
  Node *front;              // Primeiro elemento da fila.
  Node *rear;               // Ultimo elemento da fila.
} Queue;

#if DEBUG
#define debug(...) printf(__VA_ARGS__);
#else
#define debug(...);
#endif


#endif