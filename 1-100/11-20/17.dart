int getLetterSum(String number) {
  if(number.length == 4) {
    return 11; // oneThousand
  }
  if(number.length == 3) {
    int letterCount = 0;
    letterCount += 7; // hundred
    letterCount += getLetterSum(number[0]);
    letterCount += getLetterSum(number.substring(1));
    if(number.substring(1) != '00') {
      letterCount += 3;; // and
    }
    return letterCount;
  }
  if(number.length == 2) {
    int n = int.parse(number[0]);
    if (n == 0) {
      return getLetterSum(number[1]);
    } else if (n == 1) {
      int o = int.parse(number[1]);
      switch (o) {
        case 0: return 3; // ten
        case 1: return 6; // eleven
        case 2: return 6; // twelve
        case 3: return 8; // thirteen
        case 5: return 7; // fifteen
        case 8: return 8;
        default: return 4 + getLetterSum(number[1]); // number[1] + 'teen'
      }
    } else if (n > 1) {
      if(n == 2 || n == 3 || n == 8  || n == 9) {
        return 6 + getLetterSum(number[1]);
      } else if(n == 4 || n == 5 || n == 6) {
        return 5 + getLetterSum(number[1]);
      } else {
        return 7 + getLetterSum(number[1]);
      }
    }
  }
  if(number.length == 1) {
    int o = int.parse(number);
    if(o == 1 || o == 2 || o == 6) {
      return 3;
    } else if(o == 3 || o == 7 || o == 8) {
      return 5;
    } else if (o != 0) {
      return 4;
    }
  }
  return 0;
}

void main() {
  int wordLetterSum = 0;
  for(int i = 1; i <= 1000; i++) {
    wordLetterSum += getLetterSum(i.toString());
  }
  print(wordLetterSum);
}