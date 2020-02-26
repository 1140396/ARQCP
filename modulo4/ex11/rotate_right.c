int rotate_right(int num, int nbits) {

  unsigned int numAux = (unsigned int) num;

  // move os valores do lado esquerdo do número para o lado direito de acordo com o número de bits passado por parâmetro
  num >>= nbits;

  // move os valores do lado direito do número para o lado esquerdo de acordo com o número de bits passado por parâmetro
  numAux <<= (32 - nbits);

  // faz uma operação OR para juntar os bits do lado direito de num com os bits do lado esquerdo de numAux
  num |= numAux;
  
  return num;
}
