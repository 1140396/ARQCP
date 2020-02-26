#include <stdio.h>
#include "sum_first_byte.h"

int vec[] = {3, 8, 2, 6743, 9, 4};

int *ptrvec = vec;

int num = 6;

int main() {

  int i, res;

  printf("Vetor:\n[");
  
  for (i = 0; i < num - 1; i++) {

    printf("%hi, ", vec[i]);
  }

  printf("%hi]\n", vec[num - 1]);

  res = sum_first_byte();

  printf("\nSoma dos primeiros bytes de cada número do vetor: %d\n", res);

  return 0;
}
