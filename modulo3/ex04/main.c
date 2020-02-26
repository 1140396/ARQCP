#include <stdio.h>
#include "vec_add_one.h"

int num = 5;


int vec[] = {3,4,5,6,7};

int *ptrvec = vec;

int main(){
  
  int i, j;

    printf("\n--- VETOR INICIAL ---\n");

  for(i = 0; i < 5; i++){

   printf("\nValor %d: %d",i+1, vec[i]);
  
   }
  
   printf("\n");

  vec_add_one();
  
  printf("\n--- VETOR PREENCHIDO (+1)\n");

  for(j = 0; j < 5; j++){

    printf("%d|", vec[j]);
  }

  printf("\n");
  
  return 0;
}
