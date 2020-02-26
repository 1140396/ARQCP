void add_byte(char x, int *vec1, int *vec2) {

  // Guarda o tamanho do vetor numa variavel
  int vecSize = *vec1, num;

  *vec2 = vecSize;
  
  vec1++;
  vec2++;

  char byte;
  
  // Percorre o vetor
  while (vecSize > 0) {

    // Insere o valor da posição atual do pointer no vetor em num
    num = *vec1;

    // Insere usando um AND o valor do primeiro byte do número
    byte = num & 0xFF;

    // Adiciona o char x ao primeiro byte do número
    byte += x;

    // Insere o novo valor do primeiro byte de volta no número
    num >>= 8;
    num <<= 8;
    
    num |= byte;

    // Insere no novo número no segundo vetor
    *vec2 = num;

    // Aumenta a posição dos pointers 
    vec1++;
    vec2++;

    vecSize--;
  }
}
