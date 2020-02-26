#include <stdio.h>
#include "compress_shorts.h"

int main() {

  short shorts[] = {1, 6, 8, 3, 9, 4, 6, 2}, *ptrShorts;
  int integers[4], *ptrIntegers, n_shorts = 8;

  ptrShorts = shorts;
  ptrIntegers = integers;
  
  compress_shorts(ptrShorts, n_shorts, ptrIntegers);

  int i;

  for(i = 0; i < n_shorts / 2; i++) {

    printf("%d\n", *(ptrIntegers + i));
    
  }
  
  return 0;
}
