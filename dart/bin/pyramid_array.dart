List<List<int>> pyramid(int n) {
  // your code here
  return List.generate(n, (index) => List.generate(index + 1, (elIndex) => 1));
}
