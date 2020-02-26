#include<stdio.h>
#include<string.h>

//Funcao que converte uma string para inteiro
int string_to_int (char str[]){

  int digito, j = 1, m = 0;

  for(int i = strlen(str)-1; i >= 0; i--){

    digito = str[i];
    digito = digito - 48;
    m = m + (digito * j);
    j = j*10;
  }

  return m;
}

//Metodo para calcular a media de 2 digitos da string
float calc_media(int x, int y, char str){

  float media;

  media = (x + y) / (strlen(str)-1);

  return media;
}

int main(){

  int dig1, dig2, num;

  char str;

  float media;

  int string_to_int(char str);

  float calc_media(int x, int y, char str);

  printf("\nDigite um numero: ");
  scanf("%s", str);

  num = string_to_int(str);

  dig1 = string_to_int(str[0]);

  dig2 = string_to_int(str[1]);

  media = calc_media(dig1, dig2, str);

  printf("\nA media do ultimo e penultimo digito e: %f", media);

  return 0;
  
}
