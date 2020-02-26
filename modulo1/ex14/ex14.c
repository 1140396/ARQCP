#include <stdio.h>
#include "frequencies.h"

int main() {

  float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05,
		    6.45, 14.45, 0.0, 12.67, 16.23, 18.75}, *ptrGrades;
  int n = 11, *ptrFrequency, frequency[21];
  
  ptrGrades = grades;
  ptrFrequency = frequency;

  frequencies(ptrGrades, n, ptrFrequency);

  return 0;
}
