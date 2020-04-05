import 'dart:math';

void main() {
  int bigNum = 600851475143;
  int primeFactor = 0;
  for(int i = 2; i < bigNum; i++) {
    if(bigNum % i == 0) {
      bigNum ~/= i;
      if(i > primeFactor) primeFactor = i;
      i = 2;
    }
  }
  print(max(primeFactor, bigNum));
}