#include <stdio.h>
#include "find_word.h"

int main() {

  char str[] = "Esta StrIng é um TeSte";
  char word[] = "striNg";

  char *ptrStr = str, *ptrWord = word, *initial_addr = ptrStr;

  printf("%p\n", find_word(ptrStr, ptrWord, initial_addr));

  return 0;
}
