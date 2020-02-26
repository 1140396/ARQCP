#include <stdio.h>
#include"ex12.h"

int main(){

  char str[20];

  printf("\nIntroduza a frase: ");
  gets(str);

  capitalize(str);
  
  printf("\nFrase capitalizada: %s", str);
  
  printf("\n");
  
  return 0;
}
