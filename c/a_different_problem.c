#include <base/base.h>
#include <base/base_testlib.h>
#include <stdio.h>

S32 main() {
  U64 a, b;
  while (scanf("%lu %lu", &a, &b) == 2) {
    printf("%lu\n", (a > b) ? (a - b) : (b - a));
  }
}