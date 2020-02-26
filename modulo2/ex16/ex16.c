#include <stdio.h>
#include "steps.h"

int num = 0;

int main() {

  int res;

  printf("Operações:\nMultiplicar por 3\nAdicionar 6\nDividir por 3\nAdicionar 12\nSubtrair número inicial\nSubtrair 1\n");
  
  printf("Insira o número inicial: ");
  scanf("%d", &num);

  res = steps();

  printf("Número final: %d\n", res);
  
  return 0;
}
