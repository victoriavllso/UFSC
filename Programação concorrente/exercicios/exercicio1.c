#include <stdio.h>
#include <stdlib.h>

typedef struct MinMax
{
    int min;
    int max;
}MinMax;

MinMax *getMinMax(int* array, const int SIZE){

    //alocando memória para a struct (não é para o min nem para o max, mas sim para a STRUCT)
    MinMax *ptrSturct = (MinMax*) malloc(sizeof(MinMax));

    ptrSturct->max = array[0];
    ptrSturct->min = array[0];

    for (int i = 0; i < SIZE; i++){

        if (array[i] < ptrSturct->min){
            ptrSturct->min = array[i];
        }
        if (array[i] > ptrSturct->max){
            ptrSturct->max = array[i];
        }

    }
    return ptrSturct;

}


int main() {

    int vetor[10] = {1,2,3,4,6,7,8,8,9,10};
    int tamanho = 10;

    MinMax *resultado = getMinMax(vetor, tamanho);

    printf("Valor minimo: %d \n", resultado->min);
    printf("Valor maximo: %d \n", resultado->max);
    

}
