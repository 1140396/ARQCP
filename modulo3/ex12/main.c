#include <stdio.h>
#include "vec_zero.h"

int num = 5;

int short vec [] = {1,2,100,200,300};

int short *ptrvec = vec;

int main(){

  int aux = 0;

  aux = vec_zero();

  printf("\nForam alterados: %d\n", aux);
  
  return 0;
}
