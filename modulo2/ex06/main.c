#include <stdio.h>
#include "asm.h"

char byte1 = 'c',  byte2 = 'w'; 

short res;

int main(){


  printf("\nChar 1: %s", &byte1);

  printf("\nChar 2: %s", &byte2);

  res = concatBytes();
  
  printf("\nNome concat: %s\n", &res);
  
  return 0;
}
