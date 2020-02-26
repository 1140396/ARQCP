#include <stdio.h>
#include <string.h>

//Metodo que conta as palavras escritas numa string
int count_words(char *str){

    int count=0,i,len;
    char lastC;

    len=strlen(str);

    if(len > 0)
    {
        lastC = str[0];
    }

    for(i=0; i<=len; i++)
    {
        if((str[i]==' ' || str[i]=='\0') && lastC != ' ')
        {
            count++;
        }
        lastC = str[i];
    }
    return count;
}

int main(){

  int length;
  char str[20] = "a lll ooo yyyy uu";

  int count_words(char *str);
  
  length = count_words(str);

  printf("\nEscreveu %d palavras.\n", length);

  return 0;
}
