#include <stdio.h>
#include "ex08.h"

int even;

int nums[] = {10, 3, 7, 12, 8};

int num = 5;

int *ptrvec = nums;

int main() {

  int res = vec_sum_even();

  int i;

  printf("Vetor de números:\n[");
  
  for (i = 0; i < num - 1; i++) {
    printf("%d, ", nums[i]);
  }

  printf("%d]\n\n", nums[num - 1]);

  printf("Soma dos números pares: %d\n", res);
  
  return 0;
}
