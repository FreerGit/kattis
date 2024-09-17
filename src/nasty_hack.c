#include <base/base.h>
#include <base/base_testlib.h>
#include <stdio.h>
#include <stdlib.h>

S32 main() {
  S32 n;
  scanf("%d", &n);

  for (int i = 0; i < n; i++) {
    S32 r, e, c;
    scanf("%d %d %d", &r, &e, &c);

    if (e - c > r) {
      printf("advertise\n");
    } else if (e - c == r) {
      printf("does not matter\n");
    } else {
      printf("do not advertise\n");
    }
  }

  return 0;
}