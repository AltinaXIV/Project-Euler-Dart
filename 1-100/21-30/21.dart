void main() {
  Map<int, int> numToSumOfDivisors = new Map();
  int solution = 0;
  for (int i = 2; i < 10000; i ++) {
    int sum = 0;
    for (int j = 1; j < i; j++) {
      if (i % j == 0) {
        sum += j;
      }
    }
    numToSumOfDivisors[i] = sum;
  }
  for (int i = 2; i < 10000; i ++) {
    int val1 = i;
    int val2 = numToSumOfDivisors[i];
    if(val2 == null) {
      continue;
    }
    if (numToSumOfDivisors[val2] == i && i != val2) {
      solution = solution + val1 + val2;
      numToSumOfDivisors.remove(val1);
      numToSumOfDivisors.remove(val2);
    }
  }
  print(solution);
}