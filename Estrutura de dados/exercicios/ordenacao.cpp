#include <iostream>
#include <stdlib.h>
#include <string>
#include <time.h>
#define TAM_1 1000
#define TAM_2 5000
#define TAM_3 10000
#define TAM_4 50000
#define TAM_5 100000
 
using namespace std;

void randon_array(int vetor[], int tamanho){
    for(int i = 0; i < tamanho; i++){
        vetor[i] = rand() % tamanho;
    }
}
void imprimeVetor(int vetor[], int tamanho){
    int i;
    cout << "\n";
    for(i = 0; i < tamanho; i++){
        cout << "," << vetor[i];
    }
}
 


void quick_sort(int vetor[], int inicio, int fim){
 
    int pivo, esq, dir, meio, aux;
 
    //Limites da esquerda e direita da região analisada
    esq = inicio;
    dir = fim;
 
    //Ajustando auxiliares do centro
    meio =  (int) ((esq + dir) / 2);
    pivo = vetor[meio];
 
 
    while(dir > esq){
 
        while(vetor[esq] < pivo){
            esq = esq + 1;
        }
 
        while(vetor[dir] > pivo){
            dir = dir - 1;
        }
 
        if(esq <= dir){
 
            //Realiza uma troca
            aux = vetor[esq];
            vetor[esq] = vetor[dir];
            vetor[dir] = aux;
 
            //Faz os limites laterais caminharem para o centro
            esq = esq + 1;
            dir = dir - 1;
 
        }
 
 
    }
 
    //Recursão para continuar ordenando
    if(inicio < dir){
        quick_sort(vetor, inicio, dir);
    }
 
     //Recursão para continuar ordenando
    if(esq < fim){
         quick_sort(vetor, esq, fim);
    }
 
}

void heapify(int vetor[], int tamanho, int i) {
    int maior = i; // Inicializar o maior como raiz
    int esquerda = 2 * i + 1;
    int direita = 2 * i + 2;
 
    // Se o filho esquerdo for maior que a raiz
    if (esquerda < tamanho && vetor[esquerda] > vetor[maior]) {
        maior = esquerda;
    }
 
    // Se o filho direito for maior que o maior até agora
    if (direita < tamanho && vetor[direita] > vetor[maior]) {
        maior = direita;
    }
 
    // Se o maior não é a raiz
    if (maior != i) {
        swap(vetor[i], vetor[maior]);
 
        // Recursivamente heapify a subárvore afetada
        heapify(vetor, tamanho, maior);
    }
}
 
void heap_sort(int vetor[], int tamanho) {
    // Construir heap (reorganizar array)
    for (int i = tamanho / 2 - 1; i >= 0; i--) {
        heapify(vetor, tamanho, i);
    }
    
    // Um por um extrai um elemento do heap
    for (int i = tamanho - 1; i > 0; i--) {
        // Move a raiz atual para o final
        swap(vetor[0], vetor[i]);
        
        // chama max heapify no heap reduzido
        heapify(vetor, i, 0);
    }
}

void clock_sort(int vetor[], int tamanho){
    clock_t inicio = clock();
    quick_sort(vetor, 0, tamanho-1);
    clock_t fim = clock();
    double tempo = (double)(fim - inicio) / CLOCKS_PER_SEC;
    cout << "Tempo de execução do quicksort para " << tamanho << " posições: " << tempo << endl;
}

void clock_heap_sort(int vetor[], int tamanho){
    clock_t inicio = clock();
    heap_sort(vetor, tamanho);
    clock_t fim = clock();
    double tempo = (double)(fim - inicio) / CLOCKS_PER_SEC;
    cout << "Tempo de execução do heapsort para " << tamanho << " posições: " << tempo << endl;
}
 
int main(){
 
    int *vetor1 = new int[TAM_1]; //Vetor de 1000 posições
    int *vetor2 = new int[TAM_2]; //Vetor de 5000 posições
    int *vetor3 = new int[TAM_3]; //Vetor de 10000 posições
    int *vetor4 = new int[TAM_4]; //Vetor de 50000 posições
    int *vetor5 = new int[TAM_5]; //Vetor de 100000 posições

    //preenche os vetores com valores aleatórios
    randon_array(vetor1, TAM_1);
    randon_array(vetor2, TAM_2);
    randon_array(vetor3, TAM_3);
    randon_array(vetor4, TAM_4);
    randon_array(vetor5, TAM_5);

    //ordenação por quicksort
    clock_sort(vetor1, TAM_1);
    clock_sort(vetor2, TAM_2);
    clock_sort(vetor3, TAM_3);
    clock_sort(vetor4, TAM_4);
    clock_sort(vetor5, TAM_5);
 
   // cout<< endl << "Vetor 1 por quick sort: " << endl;
   // imprimeVetor(vetor1, TAM_1);
   // cout<< endl << "Vetor 2 por quick sort: " << endl;
    //imprimeVetor(vetor2, TAM_2);
   // cout<< endl <<"Vetor 3 por quick sort: " << endl;
    //imprimeVetor(vetor3, TAM_3);
   // cout<< endl << "Vetor 4 por quick sort: " << endl;
    //(vetor4, TAM_4);
    //cout<< endl << "Vetor 5 por quick sort: " << endl;
   // imprimeVetor(vetor5, TAM_5);
    

    int *vetor6 = new int[TAM_1]; //Vetor de 1000 posições
    int *vetor7 = new int[TAM_2]; //Vetor de 5000 posições
    int *vetor8 = new int[TAM_3]; //Vetor de 10000 posições
    int *vetor9 = new int[TAM_4]; //Vetor de 50000 posições
    int *vetor10 = new int[TAM_5]; //Vetor de 100000 posiçõe

    //preenche os vetores com valores aleatórios
    randon_array(vetor6, TAM_1);
    randon_array(vetor7, TAM_2);
    randon_array(vetor8, TAM_3);
    randon_array(vetor9, TAM_4);
    randon_array(vetor10, TAM_5);

    //ordenação por heapsort
    clock_heap_sort(vetor6, TAM_1);
    clock_heap_sort(vetor7, TAM_2);
    clock_heap_sort(vetor8, TAM_3);
    clock_heap_sort(vetor9, TAM_4);
    clock_heap_sort(vetor10, TAM_5);
    

    //cout<< endl << "Vetor 6 por heap sort: " << endl;
    //imprimeVetor(vetor6, TAM_1);
    //cout<< endl << "Vetor 7 por heap sort: " << endl;
    //imprimeVetor(vetor7, TAM_2);
    //cout<< endl << "Vetor 8 por heap sort: " << endl;
    //imprimeVetor(vetor8, TAM_3);
    //cout<< endl << "Vetor 9 por heap sort: " << endl;
    //imprimeVetor(vetor9, TAM_4);
    //cout<< endl << "Vetor 10 por heap sort: " << endl;

 
    return 0;
}