#include <stdio.h>
#include "library.h"

int main(){

  int n = 6;
  
  short vetor[] = {1,2,3,4,5,6};

  short *vec = vetor;
  
  int res = count_even(vec,n);
  
  printf("\nForam encontrados %d números pares no vetor\n", res);
  
  return 0;
}
