#include <stdio.h>
#include "isMultiple.h"

int A = 0, B = 0;

int main() {

  int res;
  
  printf("Valor de A: ");
  scanf("%d", &A);
  printf("Valor de B: ");
  scanf("%d", &B);

  res = isMultiple();

  if (res == 1) {
    printf("A é múltiplo de B\n");
  } else {
    printf("A não é múltiplo de B\n");
  }
  
  return 0;
}
