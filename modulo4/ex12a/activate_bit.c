int activate_bit(int *ptr, int pos) {

  unsigned int num = (unsigned int) *ptr, numAux;

  numAux = num;

  // move o bit a ser ativado para o bit menos significativo
  num >>= pos;

  // ativa o bit menos significativo
  num |= 1;

  // volta a mover os números para a sua posição inicial
  num <<= pos;

  // move os bits de numAux de modo a ficar tudo a 0 menos a parte que falta no num inicial
  numAux <<= (32 - pos);

  numAux >>= (32 - pos);

  // restaura os bits perdidos de num
  num |= numAux;

  // se o valor foi alterado retora 1 senão retorna 0
  if (num == *ptr) {
    
    return 0;
  } else {
    
    *ptr = num;
    return 1;
  }

  
}
