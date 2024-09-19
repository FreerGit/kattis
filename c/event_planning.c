#include <base/base.h>
#include <base/base_testlib.h>
#include <stdio.h>
#include <stdlib.h>

S32 main() {
  U32 particpants, budget, hotels, weeks;
  scanf("%d %d %d %d", &particpants, &budget, &hotels, &weeks);

  U32 cost = budget + 1;
  for (int h = 0; h < hotels; h++) {
    U32 price;
    scanf("%d", &price);

    for (int i = 0; i < weeks; i++) {
      U32 rooms;
      scanf("%d", &rooms);
      if (rooms >= particpants) {
        cost = Min(cost, price * particpants);
      }
    }
  }

  if (cost > budget) {
    printf("stay home\n");
  } else {
    printf("%d\n", cost);
  }

  return 0;
}