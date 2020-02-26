#include <stdio.h>
#include "crossSumBytes.h"

short s1 = 0, s2 = 0;
  
int main(){

  short res;

  printf("Valor de short 1: ");
  scanf("%hi", &s1);
  printf("Valor de short 2: ");
  scanf("%hi", &s2);

  res = crossSumBytes();

  printf("Short final (com bits trocados): %hi\n", res);
  
  return 0;
}
