void main() {
  int answer = 0;
  for(int i = 3; i < 1000; i += 3) {
    answer += i;
  }
  for(int i = 5; i < 1000; i += 5) {
    answer += i % 3 != 0 ? i : 0;
  }
  print(answer);
}