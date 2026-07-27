#include <cstdint>
#include <iostream>

using namespace std;

auto main() -> int {
  string s{};
  cin >> s;

  uint8_t t = 0;
  uint8_t h = 0;
  for (auto &c : s) {
    if (c == 'T') {
      t = (t + 1);
    } else  {
      h = (h + 1);
    }

    if ((t - h >= 2 && t >= 11) || (h - t >= 2 && h >= 11)) {
      t = 0;
      h = 0;
    }
  }
  
  std::cout << to_string(t)  << '-' << to_string(h)  << std::endl;
  return 0;
}
