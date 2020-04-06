void main() {
  List<List<int>> pascalTriangle = new List();
  pascalTriangle.add([1]);
  for(int i = 1; i < 41; i++) {
    pascalTriangle.add(new List(i + 1));
    for(int j = 0; j < pascalTriangle[i].length; j++) {
      if(j == 0 || j == pascalTriangle[i].length - 1) {
        pascalTriangle[i][j] = 1;
      } else  {
        pascalTriangle[i][j] = pascalTriangle[i - 1][j - 1] + pascalTriangle[i - 1][j];
      }
    }
  }
  print(pascalTriangle[40][20]);
}