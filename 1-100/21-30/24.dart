/*
Explanation:

The solution to this problem is what I call, pivot and reverse. Lets examine
[0, 1, 2] and the pattern of how the numbers work.

definitions:
  a - the array of the lexicographic. For the example [0, 1, 2]
  pivot point - the point, starting from nth position down to the 1st position where a[n-1] < a[n]
      - The pivot point with '|'

Step 1 is to identify the pivot point. 01|2.
Step 2: swap the smallest number past the pivot mark that is greater than the number before the pivot point. with the number directly before it. 02|1.
Step 3: reverse the numbers past the pivot point. 02|1

And repeat..

0|21 -> 1|20 -> 102
10|2 -> 12|0 -> 120
1|20 -> 2|10 -> 201
20|1 -> 21|0 -> 210

 */

List<int> nextPermutation(List<int> lexNums) {
  // Step 1:
  int pivotPoint;
  for(int i = lexNums.length - 1; i > 0; i--) {
    if(lexNums[i - 1] < lexNums[i]) {
      pivotPoint = i;
      break;
    }
  }


  // Step 2:
  for(int i = pivotPoint; i < lexNums.length; i++) {
    List<int> pivotRight = lexNums.sublist(pivotPoint);
    int target;
    for(int j = 1; true; j++) {
      if(pivotRight.contains(lexNums[pivotPoint - 1] + j)) {
        target = lexNums[pivotPoint - 1] + j;
        break;
      }
    }
    if(lexNums[i] == target) {
      int tmp = lexNums[i];
      lexNums[i] = lexNums[pivotPoint - 1];
      lexNums[pivotPoint - 1] = tmp;
      break;
    }
  }

  // Step 3:
  for(int i = pivotPoint, j = lexNums.length - 1; i < j; i++, j--) {
    int tmp = lexNums[i];
    lexNums[i] = lexNums[j];
    lexNums[j] = tmp;
  }

  return lexNums;
}

void main() {
  List<int> lexNums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  for(int i = 0; i < 999999; i++) {
    lexNums = nextPermutation(lexNums);
  }

  print(lexNums.join(''));
}