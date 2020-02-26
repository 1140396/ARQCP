#include <stdio.h>
#include "encrypt.h"

char str[] = "ddee Aa eee";

char *ptr1 = str;

int main(){

  int aux = 0;

  printf("String inicial: %s\n", str);
  
  aux = encrypt();

  printf("\nString encriptada: %s\n", str);
  printf("Número de digitos encriptados: %d\n", aux);

  return 0;
}
