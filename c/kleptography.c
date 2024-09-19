#include "string.h"
#include <base/base.h>
#include <base/base_testlib.h>
#include <stdio.h>
#include <stdlib.h>

S32 main() {
  U8 n, m;
  scanf("%hhu %hhu", &n, &m);
  char *postfix = malloc(n);
  char *chipertext = malloc(m);
  char *key = malloc(m);

  scanf("%s %s", postfix, chipertext);

  for (int i = 0; i < m - n; i++) {
    key[i] = ' ';
  }

  memcpy(&key[m - n], postfix, n);

  for (int i = m - 1; i > n - 1; i--) {
    key[i - n] = 'a' + (26 + chipertext[i] - key[i]) % 26;
  }

  printf("%s", key);

  return 0;
}
