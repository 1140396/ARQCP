#include <stdio.h>
#include "vec_search.h"

short int vec[] = {10, 15, 20, 25 , 30};

short int *ptrvec = vec;

int num = 5, x = 15;

int main() {
    
  int i;

  short *ptrRes;
  
  printf("Vetor:\n[");
  
  for (i = 0; i < num - 1; i++) {

    printf("%hi, ", vec[i]);
  }

  printf("%hi]\n", vec[num - 1]);

  ptrRes = vec_search();

  printf("\nValor a procurar: %hi", x);

  printf("\nValor encontrado: %hi\n", *ptrRes);

  return 0;
}
