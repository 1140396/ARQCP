#include <stdio.h>
#include "where_exists.h"

int main() {

  char str1[] = "teste", str2[] = "string de teste";

  char *ptrStr1, *ptrStr2;

  ptrStr1 = str1;
  ptrStr2 = str2;

  printf("%p\n", where_exists(ptrStr1, ptrStr2));

  return 0;
}
