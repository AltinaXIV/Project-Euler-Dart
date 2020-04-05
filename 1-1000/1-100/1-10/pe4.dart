void main() {
  int largestPalindrome = 0;
  for(int i = 100; i < 1000; i++) {
    for(int j = 100; j < 1000; j++) {
      int currentNumber = i * j;
      if(currentNumber > largestPalindrome) {
        String currentAsString = currentNumber.toString();
        String currentReversed = currentAsString.split("").reversed.join();
        largestPalindrome = currentAsString == currentReversed ? currentNumber : largestPalindrome;
      }
    }
  }
  print(largestPalindrome);
}