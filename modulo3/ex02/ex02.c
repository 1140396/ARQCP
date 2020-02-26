#include <stdio.h>
#include "str_copy_porto.h"

char str1[] = "One v";
char str2[5];

char *ptr1 = str1;
char *ptr2 = str2;

int main() {

	str_copy_porto();

	printf("String inicial: %s\n", str1);
	printf("String final: %s\n", str2);

	return 0;
}
