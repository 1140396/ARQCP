#include <stdio.h>
#include "calc.h"

int main() {

  int a = 1, B = 2, c = 1;

  int *b = &B;

  int res = calc(a, b, c);

  printf("Número a: %d\nNúmero apontado pelo apontador b: %d\nNúmero c: %d\n\nResultado: %d\n", a, *b, c, res);
  
  return 0;
}
