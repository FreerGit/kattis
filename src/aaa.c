#include "string.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
  int n;
  char *month = malloc(100);
  scanf("%s %d", month, &n);
  if (strcmp(month, "OCT") == 0 && n == 31) {
    printf("yup\n");
  } else if (strcmp(month, "DEC") == 0 && n == 25) {
    printf("yup\n");
  } else {

    printf("nope\n");
  }
}
