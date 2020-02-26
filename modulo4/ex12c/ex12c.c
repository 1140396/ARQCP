#include <stdio.h>
#include "ex12c.h"

int main() {

  int num = 20, pos = 3, res;
  int *ptr = &num;

  printf("\nNúmero inicial: %x\nPosições a serem mudadas: %d e %d\n", num, pos, (31 - pos));

  res = activate_2bits(ptr, pos);

  printf("\nNovo número: %x\nResultado: %d\n", num, res);
  
  return 0;
}
