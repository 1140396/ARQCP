#include <stdio.h>
#include "library.h"

int main(){

  int x = 3;
  
  printf("Valor de x: %d\n", x);
  
  int res = cube(x);

  printf("x³ = %d\n", res);

  return 0;
}
