#include <stdio.h>
#include "str_copy_porto2.h"

char str1[] = "One vV";
char str2[16];

char *ptr1 = str1;
char *ptr2 = str2;

int main() {

	str_copy_porto2();

	printf("String inicial: %s\n", str1);
	printf("String final: %s\n", str2);

	return 0;
}
