bool isDiv(int n) {
  for(int i = 2; i < 20; i++) {
    if(n % i != 0) return false;
  }
  return true;
}

void main() {
  int i;
  for(i = 20; true; i += 20) {
    if(isDiv(i)) break;
  }
  print(i);
}