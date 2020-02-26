#include <stdio.h>
#include "concatenates.h"

char str1 [40] = "Qwerty";

char str2 [40] = "Ytrewq";

char str3 [80];

char *ptr1 = str1;

char *ptr2 = str2;

char *ptr3 = str3;

int main(){

  printf("\nString 1: \n%s\n", str1);

  printf("\nString 2: \n%s\n", str2);
  
  str_cat(); //Função que concatena as 2 strings anteriores

  printf("\nString 3: \n%s\n", str3);
  
  return 0;
}
