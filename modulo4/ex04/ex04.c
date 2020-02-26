#include <stdio.h>
#include "sum_smaller.h"

int main() {

  int num1 = 5, num2 = 10, smal = 0;

  int *smaller = &smal;

  int res = sum_smaller(num1, num2, smaller);

  printf("Número 1: %d\nNúmero 2: %d\n\nSoma: %d\nNúmero mais pequeno: %d\n", num1, num2, res, *smaller);
  
  return 0;
}
