#include <stdio.h>
#include "function.h"

int i = 0;

int main(){

  int res = 0;

  printf("Valor a introduzir: ");
  scanf("%d\n", &i);

  res = function();
  
  printf("Resultado: %d\n", res);
  
  return 0;
}
