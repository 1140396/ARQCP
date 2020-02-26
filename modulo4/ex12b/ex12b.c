#include <stdio.h>
#include "activate_bit.h"

int main() {

  int num = 20, pos = 3, res;
  int *ptr = &num;

  printf("\nNúmero inicial: %x\nPosição a ser mudada: %d\n", num, pos);

  res = activate_bit(ptr, pos);

  printf("\nNovo número: %x\nResultado: %d\n", num, res);
  
  return 0;
}
