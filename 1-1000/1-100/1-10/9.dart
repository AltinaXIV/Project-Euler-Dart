import 'dart:math';

void main() {
  for(int a = 1; a < 1000; a++) {
    for(int b = 1; b < 1000; b++) {
      double c = sqrt(a * a + b * b);
      if(a + b + c == 1000) {
        print((a * b * c).toInt());
        return;
      }
    }
  }
}