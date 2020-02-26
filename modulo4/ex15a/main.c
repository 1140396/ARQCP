#include <stdio.h>
#include "library.h"

int main(){

  unsigned int date1 = 21201912;
  unsigned int date2 = 22199502;
  unsigned int res;
  
  printf("\nData 1: %d", date1);
  printf("\nData 2: %d", date2);

  res = greater_date(date1, date2);
  
  printf("\nData maior: %d", res);
  
  return 0;
}
