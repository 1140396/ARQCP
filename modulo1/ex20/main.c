#include <stdio.h>
#include "find_all_words.h"

int main(){

   char str[] = "Esta StrIng é um TeSte com StrinG";
   char word[] = "striNg";

   char *addrs[30];

   char *ptrStr = str, *ptrWord = word;
   char **ptrAddrs = addrs;

   find_all_words(ptrStr, ptrWord, ptrAddrs);

   int i, j;

   for (i = 0; i < 2; i++) {

     for (j = 0; j < 6; j++) {

       printf("%c", *(addrs[i] + j));
     }
     printf("\n");
   }
   
   return 0;
}
