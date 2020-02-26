#include <stdio.h>
#include "zero_count.h"

char str[] = "Hello 0 World\n";

char *ptr1 = str;

int main(){

  int ret = 0;

  ret = zero_count();
  
  printf("Número de zeros na string: %d\n", ret);
  
  return 0;
}
