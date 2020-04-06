void main() {
  int longestChain = 0;
  int longestChainNumber;
  for(int i = 999999; i > 0 ; i--) {
    int position = i, chainLength = 1;
    while(true) {
      if(position == 1) {
        if(chainLength > longestChain) {
          longestChain = chainLength;
          longestChainNumber = i;
        }
        break;
      }
      if(position.isOdd) {
        chainLength++;
        position = position * 3 + 1;
      } else {
        chainLength++;
        position ~/= 2;
      }
    }
  }
  print(longestChainNumber);
}

// NOTE: This solution is not efficient. It could be made more efficient by making
// A map that maps value -> chainLength so that if a repeat value is found along
// a chain, it can be simply added to the current calculated chain length;