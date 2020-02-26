 #include <stdio.h>
#include "check_num.h"

int num = 0;

int main() {

  char res;
  
  printf("Escolha um número para verificar: ");
  scanf("%d", &num);

  res = check_num();

  res += 48;

  if (res == '1') {
    printf("O número é par e negativo\n");
  } else if (res == '2') {
    printf("O número é ímpar e negativo\n");
  } else if (res == '3') {
    printf("O número é par e positivo\n");
  } else if (res == '4') {
    printf("O número é ímpar e positivo\n");
  } else {
    printf("Erro\n");
  }

  return 0;
}
