void main() {
  int answer = 2;
  int fibA = 1;
  int fibB = 2;
  for(int i = fibA + fibB; i < 4000000; i = fibA + fibB) {
    answer += i.isEven ? i : 0;
    fibA = fibB;
    fibB = i;
  }
  print(answer);
}