void frequencies(float *grades, int n, int *freq) {

  int i, j, count = 0;

  for(i = 0; i < 21; i++) {

    for(j = 0; j < n; j++) {

      // Converte o float em int para ficar apenas a parte inteira do número

      int num = (int) *(grades + j);

      if(num == i) {

	count++;
      }
      
    }

    *(freq + i) = count;
    count = 0;
    
  }
  
}
