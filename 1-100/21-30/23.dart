void main() {
  List<int> abundantNumbers = new List();
  Set<int> sumsOfAbundantNumbers = new Set();
  int solution = 0;

  // Find all abundant abundant numbers
  for(int i = 12; i <= 28123; i++) {
    int sumOfDivisors = 0;
    for(int j = 1; j < i; j++) if(i % j == 0) sumOfDivisors += j;
    if(sumOfDivisors > i) abundantNumbers.add(i);
  }

  // Find all sums of abundant numbers
  for(int i = 0; i < abundantNumbers.length; i++) for (int j = 0; j <= i; j++) sumsOfAbundantNumbers.add(abundantNumbers[i] + abundantNumbers[j]);

  // Bruteforce solutions

  for(int i = 0; i <= 28123; i++) if(!sumsOfAbundantNumbers.contains(i)) solution += i;

  print(solution);

}