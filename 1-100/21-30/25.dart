void main() {
  BigInt a = BigInt.from(1), b = BigInt.from(1);

  int i = 3;
  for(; true; i++) {
    BigInt tmp = b;
    b = a + b;
    a = tmp;
    if(b.toString().length == 1000) {
      break;
    }
  }

  print(i);
}