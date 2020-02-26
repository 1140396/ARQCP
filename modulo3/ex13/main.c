#include <stdio.h>
#include "keep_positives.h"

int num = 10;

int vec[] = {-1, -2, -5, 1,4 ,-8, 12, 87, 0, 7};

int *ptrvec = vec;
  
int main(){

  int i, j;

    
  printf("\n--- VETOR ORIGINAL ---\n");
  
  for(i = 0; i < num; i++){

    printf("%d|", vec[i]);

  }

  printf("\n");

  keep_positives();
  
  printf("\n--- VETOR ALTERADO ---\n");
  
  for(j = 0; j < num; j++){

    printf("%d|", vec[j]);
  }

  printf("\n");
  
  return 0;
}
