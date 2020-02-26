#include <stdio.h>
#include "ex20.h"

int vec[] = {1, 3, 7, 4, 6, 3, 5, 8};

int *ptrvec = vec;

int num = 8;

int main() {

  int i, res;
  
  printf("Vetor: ");

  for (i = 0; i < num; i++) {
    printf("%d ", vec[i]);
  }
  
  res = count_seq();

  printf("\n\nNúmero de sequências: %d\n", res);

  return 0;
}
