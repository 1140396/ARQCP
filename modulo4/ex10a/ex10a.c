#include <stdio.h>
#include "count_bits_zero.h"

int main() {

  int x = 57, res;

  res = count_bits_zero(x);

  printf("Número: %d\n\nNúmero de bits a 0: %d\n", x, res);
  
  return 0;
}
