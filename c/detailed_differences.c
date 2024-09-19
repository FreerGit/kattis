#include "stdio.h"
#include "stdlib.h"
#include "string.h"

int main() {
  int temps;
  scanf("%d", &temps);
  char *str1 = malloc(100);
  char *str2 = malloc(100);
  while (scanf("%s %s", str1, str2) == 2) {
    printf("%s\n%s\n", str1, str2);
    for (int i = 0; i < strlen(str1); i++) {
      if (str1[i] == str2[i]) {
        printf(".");
      } else {
        printf("*");
      }
    }
    printf("\n\n");
  }
}