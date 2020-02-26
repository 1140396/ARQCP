#include <stdio.h>
#include "odd_sum.h"

int main() {

  int array[] = {4,5,2,9,4};

  int *ptrArray;
  ptrArray = array;

  printf("%d\n", odd_sum(ptrArray));

  return 0;
}
