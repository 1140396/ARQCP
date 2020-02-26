#include <stdio.h>
#include "crossSumBytes.h"

int main(){

  short res;

  printf("Short 1: %hi\n", s1);
  printf("Short 2: %hi\n", s2);

  res = crossSumBytes();

  printf("Short final(com bits trocados): %hi\n", res);
  
  return 0;
}
