#include <stdio.h>
#include "ex10c.h"

int main() {

  int vec[] = {7, 58, 23, 93, -1, 0};

  int num = 6, res, i;
  
  int *ptr = vec;

  res = vec_count_bits_zero(ptr, num);

  printf("Vetor:\n");
  
  for (i = 0; i < num; i++) {
    printf("%d ", vec[i]);
  }

  printf("\n\nNúmero total de bits a 0 do vetor: %d\n", res);
  
  return 0;
}
