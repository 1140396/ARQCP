#include <stdio.h>
#include "swap.h"

char vec1[] = {'a', 'b', 'c', 'd'};
char vec2[] = {'e', 'f', 'g', 'h'};

char *ptr1 = vec1;
char *ptr2 = vec2;

int num = 4;

int main() {

  int i;

  printf("Vetor 1: ");
  
  for (i = 0; i < num; i++) {
    printf("%c ", vec1[i]);
  }

  printf("\nVetor 2: ");
  
  for (i = 0; i < num; i++) {
    printf("%c ", vec2[i]);
  }

  swap();

  printf("\nVetor 1: ");
  
  for (i = 0; i < num; i++) {
    printf("%c ", vec1[i]);
  }

  printf("\nVetor 2: ");

  for (i = 0; i < num; i++) {
    printf("%c ", vec2[i]);
  }

  printf("\n");

  return 0;
}
