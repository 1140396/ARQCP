#include <stdio.h>
#include "array_sort.h"

int num = 5;

int vec[] = {2,3,4,1,8};

int *ptrvec = vec;

int main(){

  int i, j;
  
  printf("\n--- VETOR ORIGINAL ---\n");

  for(i = 0; i < num; i++){

    printf("%d|", vec[i]);
  }

  printf("\n");
  
  array_sort();

  printf("\n--- VETOR ORDENADO ORDEM DESCENDENTE ---\n");

  for(j = 0; j < num; j++){

    printf("%d|", vec[j]);
  }

  printf("\n");
  
  return 0;
}
