#include <stdio.h>
#include "vec.h"

int num = 5;

int vec[] = {1,2,3,4,5};

int *ptrvec = vec;
  
int main(){
  
  int i, aux = 0;

  printf("\n--- VETOR ORIGINAL ---\n");
  
  for(i = 0; i < num; i++){

    printf("%d|", vec[i]);
  }

  printf("\n");


  printf("\n--- SOMA DE TODOS OS ELEMENTOS ---\n");

  aux = vec_sum();

  printf("%d", aux);

  
  int media = vec_avg();

  printf("\n--- MÉDIA DE VALORES ---\n");

  printf("%d\n", media);
  
  return 0;
}
