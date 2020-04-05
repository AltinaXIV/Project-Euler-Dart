void main() {
  int sumOfSquares = 0, squareOfSum = 0;

  for(int i = 1; i <= 100; i++) {
    sumOfSquares += i * i;
    squareOfSum +=i;
  }

  squareOfSum *= squareOfSum;
  print(squareOfSum - sumOfSquares);
}