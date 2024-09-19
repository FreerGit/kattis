#include "base/base.h"

#include <stdio.h>
#include <stdlib.h>

S32 main() {
  S32 t, k;
  scanf("%d", &t);
  scanf("%d", &k);
  if (t > k) {
    printf("MAGA!\n");
  } else if (t == k) {
    printf("WORLD WAR 3!\n");
  } else {
    printf("FAKE NEWS!\n");
  }
}