#include <ctype.h>

//Método que coloca a letra inicial de cada palavra capitalizada caso não esteja
void capitalize(char *str){

  while(*str){
    while(*str && *str == ' ')
      
      str++;

      *str = toupper(*str);

      str++;
    while(*str && *str != ' ')

	str++;          
  }
}
