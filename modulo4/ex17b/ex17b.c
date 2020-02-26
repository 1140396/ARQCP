#include <stdio.h>
#include "add_byte.h"

int main() {

  int vec1Nums[] = {7, 8, 23, 31, 10, 3, 17, 13};
  
  int vec2Nums[] = {0, 0, 0, 0, 0, 0, 0, 0};

  char x = 5;

  int *vec1, *vec2;

  vec1 = vec1Nums;
  vec2 = vec2Nums;

  int i;

  printf("\nVetor 1: ");
  
  for (i = 0; i < 8; i++) {
    printf("%d ", vec1Nums[i]);
  }

  printf("\nVetor 2: ");
  
  for (i = 0; i < 8; i++) {
    printf("%d ", vec2Nums[i]);
  }

  printf("\nx : %d\n", x);

  add_byte(x, vec1, vec2);

  printf("\nVetor 2: ");
  
  for (i = 0; i < 8; i++) {
    printf("%d ", vec2Nums[i]);
  }

  printf("\n");
  
  return 0;
}
