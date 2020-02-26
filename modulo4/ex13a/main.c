#include <stdio.h>
#include "library.h"

int main(){

  int a = 2, left = 2, right = 3;

  printf("\nNumero inicial: %d\n", a);
  printf("\nNumero de bits a ativar esquerda: %d\n", left);
  printf("\nNumero de bits ativar direita: %d\n", right);

  int res = active_bits(a, left, right);
  
  printf("\nNumero final: %d\n", res);
  
  return 0;
}
