#include <stdio.h>
#include "sum_and_subtract.h"

short A;
int B;
long C, D;

int main() {

  long long res;

  printf("Expressão: C + A - D + B\n");

  printf("Valor de A: ");
  scanf("%hi", &A);
  printf("Valor de B: ");
  scanf("%d", &B);
  printf("Valor de C: ");
  scanf("%li", &C);
  printf("Valor de D: ");
  scanf("%li", &D);

  res = sum_and_subtract();

  printf("Resultado: %lld\n", res);
  
  return 0;
}
