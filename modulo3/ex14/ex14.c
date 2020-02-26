#include <stdio.h>
#include "ex14.h"

short int vec[] = {1, 3, 1, 6, -1, 3, 2, 8};

short int *ptrvec = vec;

int x = 0;

int num = 8;

int main() {

  int i, res;

  printf("Vetor:\n[");
  
  for (i = 0; i < num - 1; i++) {

    printf("%hi, ", vec[i]);
  }

  printf("%hi]\n", vec[num - 1]);

  res = vec_diff();

  printf("\nNúmero de números não duplicados: %d\n", res);

  return 0;
}
