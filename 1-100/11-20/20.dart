void main() {
  BigInt factorial = BigInt.from(1);
  for(int i = 100; i > 0; i--) {
    factorial *= BigInt.from(i);
  }
  String factorialString = factorial.toString();
  int sum = 0;
  for(int i = 0; i < factorialString.length; i++) {
    sum += int.parse(factorialString[i]);
  }
  print(sum);
}