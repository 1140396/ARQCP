#include <stdio.h>
#include "sum2ints.h"

int op1 = 0, op2 = 0;

int main() {

  long long res;
  
  printf("Valor de op1: ");
  scanf("%d", &op1);
  printf("Valor de op2: ");
  scanf("%d", &op2);

  res = sum2ints();

  printf("Soma dos números: %lld\n", res);

  return 0;
}
