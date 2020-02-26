#include <stdio.h>
#include "ex08.h"

int main(){

  int i, n, vec[30];

  printf("\nInsira o tamanho do vetor: ");

  scanf("%d", &n);

  for(i = 0; i < n; i++){

    printf("\nInsira os valores na posicao %d: ", i + 1);

    scanf("%d", (vec + i));
  }

  printf("\nVetor original:\n");

  for(i = 0; i < n; i++){

    printf("%d", *(vec + i));
  }
  
  array_sort2(vec, n);

  printf("\nVetor ordenado: \n");

  for(i = 0; i < n; i++){

    printf("%d", *(vec + i));
  }
  
  printf("\n");
  
  return 0;
}
