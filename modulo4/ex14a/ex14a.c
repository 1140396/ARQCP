#include <stdio.h>
#include "join_bits.h"

int main() {

  int a = -1, b = 0, pos = 8, res;

  printf("\na: %x\nb: %d\nPosição a ser mudada: %d\n", a, b, pos);

  res = join_bits(a, b, pos);

  printf("\nNovo número: %x\n", res);
  
  return 0;
}
