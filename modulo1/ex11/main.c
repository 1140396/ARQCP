#include<stdio.h>
#include"ex11.h"

int main(){

  char str[] = "A man a plan a canal Panama.";

  char *ptrStr = str;
  
  //Verifica através da função palindrome se a palavra introduzida é ou não palindrome
  if(palindrome(ptrStr) == 1){
    printf("\nA palavra introduzida e um palindrome");
  }else{
    printf("\nA palavra introduzina não é um palindrome\n");
  }

  printf("\n");
  
  return 0;
}
