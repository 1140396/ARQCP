#include <stdio.h>
#include "getArea.h"

int base = 0, height = 0;

int main() {

  int res;
  
  printf("Valor da base do triângulo: ");
  scanf("%d", &base);
  printf("Valor da altura do triângulo: ");
  scanf("%d", &height);

  res = getArea();

  printf("Área do triângulo: %d\n", res);
  
  return 0;
}
