 #include <stdio.h>
#include "swapBytes.h"

short s;

int main () {

  short res = 0;

  printf("Valor do short: ");
  scanf("%hu", &s);

  res = swapBytes();

  printf("\nValor do short com os bytes trocados: %hu\n", res);

  return 0;
}
