#include <stdio.h>
#include "library.h"

int main (){

  int v2 = 2;
  
  int *v1 = &v2;

  printf("\nO valor e: %d\n", v2);
  
  int valor = inc_square(v1, v2);

  printf("\nValor do apontador +1: %d\n", *v1);
  
  printf("\nO quadrado do valor é: %d\n", valor);
  
  return 0;
}
