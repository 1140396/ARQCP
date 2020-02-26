char* where_exists(char *str1, char *str2) {

  char *posicao;
  int i = 0, j = 0;

  // Retorna NULL se a String for NULL

  if(*(str1) == 0x0) {
    return 0x0;
  }

  // Percorre a String até encontrar o carater de terminação

  while(*(str2 + i) != '\0') {

    // Percorre a segunda String e vai verificando se ambas as Strings são iguais

    while(*(str1 + j) != '\0' && *(str2 + i + j) == *(str1 + j)) {

      j++;

      /** Guarda na variável 'posicao' a posição inicial da String 
	  que queremos encontrar **/
      
      posicao = (str2 + i);
    }

    /** Se a String que queremos encontrar for percorrida até ao fim 
	retorna a posição **/

    if(*(str1 + j) == '\0') {

      return posicao;
      
    } else {
      
      j = 0;
    }

    i++;
  }
  
  return 0x0;
}
