import 'dart:math';

void main() {
  int triangle = 0;
  for(int i = 1; true; i++) {
    triangle += i;
    int divisors = 0;
    int sqrtTriangle = sqrt(triangle).ceil();
    if(sqrtTriangle * sqrtTriangle == triangle) divisors--;
    for(int j = 1; j <= sqrtTriangle; j++) {
      if(triangle % j == 0) {
        divisors++;
      }
      if(divisors > 500) {
        print(triangle);
        return;
      }
    }
  }
}