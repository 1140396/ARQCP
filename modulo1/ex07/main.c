#include <stdio.h>
#include "ex07.h"

int main(){

  int i,n,vec[30];
  
  printf("\nTamanho do vetor: ");
  scanf("%d", &n);
  
  for(i = 0; i < n; ++i){

    printf("\nInsira o valor %d:", i + 1);
    scanf("%d", &vec[i]);
  }

    printf("\nVetor original:\n");
  
  for(i = 0; i < n; ++i){

    printf("%d", vec[i]);
  }
  
  array_sort1(vec, n);
  
  printf("\nVetor ordenado:\n");
  
  for(i = 0; i < n; ++i){

    printf("%d", vec[i]);
  }

  printf("\n");
  
  return 0;
}
