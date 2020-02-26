#include <stdio.h>
#include "where_is.h"

int main() {

  char str[] = "How to order printed manuals from the FSF", c = 'e';
  char *ptrStr;

  int vec[30];
  int *ptrVec;

  ptrVec = vec;
  ptrStr = str;

  int matches = where_is(ptrStr, c, ptrVec), i;
  
  for(i = 0; i < matches; i++) {

    printf("%d\n", *(ptrVec + i));
  }

  return 0;
}
