#include "base/base.h"

#include <stdio.h>
#include <stdlib.h>

S32 main() {
  char *word = malloc(100);
  S32 len = scanf("%s", word);
  S32 repeat = 0;
  scanf("%d", &repeat);
  for (S32 i = 0; i < repeat; i++) {
    printf("%s", word);
  }
}