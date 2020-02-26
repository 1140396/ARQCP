int join_bits(int a, int b, int pos) {

  if (pos == 31) {
    return a;
  }

  int res, signalMask = 1;

  // cria uma mascara para trocar o número de positivo para negativo
  signalMask <<= 31;

  pos++;

  // guarda em b os bits a serem usados no novo número deixando a 0 os restantes
  b >>= pos;
  b <<= pos;

  // guarda em a os bits a serem usados no novo número deixado a 0 os restantes
  a <<= 31 - pos;

  // Altera o bit de sinal para 0 caso seja 1 ou mantém 0 caso seja 0 (se o número for negativo fica positivo e se for positivo mantém-se positivo)
  a ^= signalMask;
  
  a >>= 31 - pos;

  // Junta-se os bits de cada número para formar o novo número
  res = b | a;

  return res;
}
