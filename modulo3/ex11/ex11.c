#include <stdio.h>
#include "vec_greater20.h"

long long ints[] = {12, 27, 20, 18, 13, 29, 10, 16};

long long *ptrvec = ints;

int num = 8;

int main() {

  int i, count;

  printf("Vetor:\n[");
  
  for (i = 0; i < num - 1; i++) {

    printf("%lli, ", ints[i]);
  }

  printf("%lli]\n", ints[num - 1]);

  count = vec_greater20();

  printf("\nNúmero de elementos maiores que 20: %d\n", count);

  return 0;
}
