import '../../lib/prime.dart';

void main() {
  PrimeGenerator p = new PrimeGenerator();
  int sum = 0;;
  for(int i = 1; true; i++) {
    int prime = p.getPrime(i);
    if(prime < 2000000) {
      sum += prime;
    } else {
      break;
    }
  }
  print(sum);
}