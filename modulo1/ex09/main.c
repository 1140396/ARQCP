#include <stdio.h>
#include "ex09.h"

int main(){

  int i, n, src[20], dest[20], val;

  printf("\nInsira o tamanho do vetor: ");
  scanf("\n%d", &n);

  for(i = 0; i < n; i++){

    printf("\nInsira o valor no vetor %d: ", i + 1);
    scanf("%d", (src + i));
  }

  val = sort_without_reps(src,n,dest);

  printf("\nVetor cópia sem repetições:\n");
  
  for(i = 0; i < val; i++){

    printf("%d | ", *(dest + i));
  }

  printf("\n");

  return 0;
  
}
