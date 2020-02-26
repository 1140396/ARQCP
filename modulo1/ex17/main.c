#include <stdio.h>
#include "ex17.h"

int main(){

  int vec1[20], vec2[20], n, i;

  printf("\nInsira o tamanho do vetor: ");
  scanf("%d", &n);

  printf("\nInsira os valores do vetor 1: \n");

  for(i = 0; i < n; i++){

    scanf("%d|", (vec1 + i));
  }

  printf("\nInsira os valores do vetor 2: \n");

    for(i = 0; i < n; i++){

      scanf("%d|", (vec2 + i));
  }

    swap(vec1, vec2, n);

    printf("\nVetor 1\n");
    
    for(i = 0; i < n; i++){

      printf("%d|", vec1[i]);
    }

        printf("\nVetor 2\n");
    
    for(i = 0; i < n; i++){

      printf("%d|", vec2[i]);
    }

    printf("\n");

    return 0;
}
