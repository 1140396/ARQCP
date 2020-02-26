#include <stdio.h>
#include "getArea.h"

int main() {

  int res;

  res = getArea();
  
  printf("Área do triângulo com valores ja inicializados: %d\n", res);
  
  printf("Valor da base do triângulo: ");
  scanf("%d", &base);
  printf("Valor da altura do triângulo: ");
  scanf("%d", &height);

  res = getArea();

  printf("Área do triângulo com valores inseridos: %d\n", res);
  
  return 0;
}
