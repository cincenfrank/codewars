bool comp(List<int> a1, List<int> a2) {
  if (a1.length != a2.length) return false;
  a1 = a1.map((e) => e * e).toList()..sort();
  a2.sort();

  return a1.toString() == a2.toString();
}
