#include <stdlib.h>

//Função que gera automaticamente valores dentro de um limite
void populate(int *vec, int num, int limit){

  int i, aux;

  for(i = 0; i < num; i++){

    aux = rand() % (limit);
    
    *(vec + i) = aux;
  }
}
