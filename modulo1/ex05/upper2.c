void upper2(char *str) {

  int i = 0;

  // Percorre a String até encontrar a marcação que indica o final da Strin
  
  while (*(str + i) != '\0') {

    /** Verifica se o char encontrado é uma letra minúscula, caso
	seja converte para maiúscula tirando 32 ao seu código ASCII **/

    if (*(str + i) <= 122 && *(str + i) >= 97) {

      *(str + i) -= 32;
    }

    i++;
  }
}
