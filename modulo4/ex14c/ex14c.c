#include <stdio.h>
#include "ex14c.h"

int main() {

  int a = -1, b = 0, pos = 8, res;

  printf("\na: %x\nb: %d\nPosição a ser mudada: %d\n", a, b, pos);

  res = mixed_sum(a, b, pos);

  printf("\nSoma: %x\n", res);
  
  return 0;
}
