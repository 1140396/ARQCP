#include <stdio.h>
#include "sum_n.h"

int main() {
  
  int n = 10;

  int res = sum_n(n);

  printf("Número n passado por parâmetro: %d\n\nSoma de todos os número até ao n: %d\n", n, res);

  return 0;
}
