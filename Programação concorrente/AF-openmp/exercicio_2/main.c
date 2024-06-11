#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <omp.h>

// usando a estrategia de escalonemamento static, pois o tamaho da matriz faz cada iteração do loop realziar a mesma quaantidade de trabalho (evita overhead do dinamico)
void init_matrix(double* m, int rows, int columns) {
    #pragma omp parallel for schedule(static) //
    for (int i = 0; i < rows; ++i)
        for (int j = 0; j < columns; ++j)
            m[i*columns+j] = 1;
            //m[i*columns+j] = i + j; //iniciar com numero constante para testar (voltar para esse código inicial depois)
}


void mult_matrix(double* out, double* left, double *right, 
                 int rows_left, int cols_left, int cols_right) {
    int i, j, k;
    #pragma omp parallel for schedule(static) private(i,j,k)  //privamos as variáveis i,j,k para que cada thread tenha sua própria cópia, o que previne a condição de corrida
    for (i = 0; i < rows_left; ++i) {
        for (j = 0; j < cols_right; ++j) {
            out[i*cols_right+j] = 0;
           // #pragma omp parallel for firstprivate(i, j) schedule(guided) (região paralela dentro de outra paralela)
            for (k = 0; k < cols_left; ++k) 
                out[i*cols_right+j] += left[i*cols_left+k]*right[k*cols_right+j];
        }
    }
} // paralelizar o loop mais interno leva a um numero excessivo de threads em execução simultaneamnente 

int main (int argc, char *argv[]) {
    if (argc < 2) {
        printf("Uso: %s tam_matriz\n", argv[0]);
        return 1;
    }
    int sz = atoi(argv[1]);
    double* a = malloc(sz*sz*sizeof(double));
    double* b = malloc(sz*sz*sizeof(double));
    double* c = calloc(sz*sz, sizeof(double));

    init_matrix(a, sz, sz);
    init_matrix(b, sz, sz);

    //          c = a * b

    mult_matrix(c,  a,  b, sz, sz, sz);

    
    /* ~~~ imprime matriz ~~~ */
    char tmp[32];
    int max_len = 1;
    for (int i = 0; i < sz; ++i) {
        for (int j = 0; j < sz; ++j) {
            int len = sprintf(tmp, "%ld", (unsigned long)c[i*sz+j]);
            max_len = max_len > len ? max_len : len;
        }
    }
    char fmt[16];
    if (snprintf(fmt, 16, "%%s%%%dld", max_len) < 0) 
        abort();
    for (int i = 0; i < sz; ++i) {
        for (int j = 0; j < sz; ++j) 
            printf(fmt, j == 0 ? "" : " ", (unsigned long)c[i*sz+j]);
        printf("\n");
    }

    free(a);
    free(b);
    free(c);

    return 0;
}
