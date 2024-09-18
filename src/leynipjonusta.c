#include "string.h"
#include <stdio.h>
#include <stdlib.h>

#define MB(x) (((long long)(x)) << 20)

int main() {
  char *email = malloc(MB(1));
  char *email_no_space = malloc(MB(1));
  scanf("%[^\n]", email);
  int len = strlen(email);
  int acc = 0;
  for (int i = 0; i < len; i++) {
    if (email[i] != ' ') {
      email_no_space[acc] = email[i];
      acc++;
    }
  }
  printf("%s\n", email_no_space);
}
