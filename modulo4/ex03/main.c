#include <stdio.h>
#include "library.h"

int main(){

  int a = 3;

  int b = 3;

  int c = -1;

  printf("Os números a determinar sao: %d | %d | %d\n", a, b, c);
  
  int res = greatest(a,b,c);

  printf("O maior digito e o : %d\n", res);
  
  return 0;
}
