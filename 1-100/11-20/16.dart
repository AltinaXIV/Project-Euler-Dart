import 'dart:math';

void main() {
  BigInt bigNum = new BigInt.from(2);
  bigNum = bigNum.pow(1000);
  String numStr = bigNum.toString();
  int sum = 0;
  for(int i = 0; i < numStr.length; i++) {
    sum += int.parse(numStr[i]);
  }
  print(sum);
}