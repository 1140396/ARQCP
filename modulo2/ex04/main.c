#include <stdio.h>
#include "asm.h"

extern int op3;
extern int op4;

int op1 = 0, op2 = 0, res = 0;

int main(){
  
  printf("Valor 1: ");
  scanf("%d", &op1);

  printf("\nValor 2: ");
  scanf("%d", &op2);

  printf("\nValor 3: ");
  scanf("%d", &op3);

  printf("\nValor 4: ");
  scanf("%d", &op4);

  res = sum_v3();

  printf("\nResultado: %d\n", res);
  
  return 0;
}
