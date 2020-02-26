int where_is(char *str, char c, int *p) {

  int matches = 0, i = 0;

  // Percorre a String até encontrar o carater que indica a terminação

  while(*(str + i) != '\0') {

    // Verifica se o valor apontado pelo pointer str é igual a c

    if (*(str + i) == c) {

      *(p + matches) = i;

      matches++;
    }

    i++;
  }
  
  return matches;
}
