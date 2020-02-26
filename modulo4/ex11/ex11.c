#include <stdio.h>
#include "ex11.h"

int main() {

  int num = 27, nbits = 4, res;

  res = rotate_left(num, nbits);

  printf("\nNúmero: %x\nNúmero %d bits rodado para a esquerda: %x\n", num, nbits, res);

  res = rotate_right(num, nbits);

  printf("\nNúmero: %x\nNúmero %d bits rodado para a esquerda: %x\n", num, nbits, res);
  
  return 0;
}
