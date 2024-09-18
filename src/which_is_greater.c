#include "string.h"
#include <stdio.h>
#include <stdlib.h>

#define Max(A, B) (((A) > (B)) ? (A) : (B))
#define Clamp(A, X, B) (((X) < (A)) ? (A) : ((X) > (B)) ? (B) : (X))

int main() {
  int a, b;
  scanf("%d %d", &a, &b);

  printf("%d\n", Clamp(0, Max(0, (a) - (b)), 1));
}
