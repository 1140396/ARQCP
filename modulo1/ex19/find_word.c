char *find_word(char *str, char *word, char *initial_addr) {

  int i = 0, j = 0;
  char *posicao;

  // Retorna NULL se a String for NULL

  if(*(word) == 0x0) {
    return 0x0;
  }

  /** Percorre a String apartir do endereço inicial passado por parâmetro
      e verifica se as 2 letras são iguais, ignorando o facto de serem 
      maiúsculas ou minúsculas **/

  while(*(initial_addr + i) != '\0') {

    while((*(word + j) == *(initial_addr + i + j) ||
	   *(word + j) == (*(initial_addr + i + j) + 32) ||
	   *(word + j) == (*(initial_addr + i + j) - 32))
	  && *(word + j) != '\0') {

      /** Guarda da variável 'posicao' a posição inicial da palavra a procurar
	  dentro da String indicada **/

      posicao = (initial_addr + i);
      j++;
    }

    // Se a String a procurar for percorrida até ao fim retorna a posição

    if(*(word + j) == '\0') {

      return posicao;

    } else {

      j = 0;
    }

    i++;
  }

  return 0x0;
}
