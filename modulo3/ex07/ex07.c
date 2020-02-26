#include <stdio.h>
#include "ex07.h"

char str[] = "atirei o pau ao gato";

char *ptr1 = str;

int main() {

  int numMudancas;

  printf("String inicial: %s\n", str);

  numMudancas = encrypt();

  printf("String encriptada: %s\n", str);

  printf("Foram efetuadas %d mudanças\n\n", numMudancas);

  ptr1 = str;

  numMudancas = decrypt();

  printf("String desencriptada: %s\n", str);

  printf("Foram efetuadas %d mudanças\n", numMudancas);
  
  return 0;
}
