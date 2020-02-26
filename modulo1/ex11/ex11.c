int palindrome(char *str) {

  char *strEnd = str, *initial_addr = str, *end_addr;
  
  // Verifica se o vector da String é nulo
  
  if (*(str) == 0x0) {
    return 0;
  }

  /** Percorre a String para descobrir o final da mesma e caso haja
      números na String retorna 0 (palavra não é palindrome)
   **/
  
  while (*strEnd != '\0') {

    if (*strEnd >= 48 && *strEnd <= 57) {

      return 0;
    }
    
    strEnd++;
  }

  end_addr = strEnd;

  strEnd--;

  /** Percorre a String enquanto não o endereço inicial não chegar ao fim
      e o endereço final não chegar ao inicio
   **/

  while (str != end_addr && strEnd != initial_addr) {

    // Verifica se os 2 char's são letras

    if (((*str >= 65 && *str <= 90) || (*str >= 97 && *str <= 122)) &&
	((*strEnd >= 65 && *strEnd <= 90) || (*strEnd >= 97 && *strEnd <= 122))) {

      // Verifica se as 2 letras são iguais

      if (*str != *strEnd &&
	  *str != (*strEnd + 32) &&
	    *str != (*strEnd - 32)) {

	return 0;
      }

      /** Muda os endereços de memória de acordo se já chegaram ao inicio ou
	  ao fim da String
      **/

      if (str != end_addr) {
	str++;
      }

      if (strEnd != initial_addr) {
	strEnd--;
      }
      
    } else {

      /** Verifica se o char da String é um espaço ou um carater especial.
	  Caso seja avança 1 endereço para a frente ou para trás
      **/

      if ((*str < 65)
	 || ((*str > 90 && *str    < 97))
	 || (*str > 122)) {
	
	str++;
      }

      if ((*strEnd < 65)
	 || ((*strEnd > 90 && *strEnd < 97))
	 || (*strEnd > 122)) {
	
	strEnd--;
      }
    }
  }

  return 1;
 }
