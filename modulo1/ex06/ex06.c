#include <stdio.h>
#include "power_ref.h"

int main() {
  
  int valor = 5;
  int *ptrValor;
  ptrValor = &valor;

  power_ref(ptrValor, 3);

  printf("%d\n", valor);
  
  return 0;
}
