int nbYear(int p0, double percent, int aug, int p) {
  int elapsedYear = 0;
  while (p > p0 && p0 > 0) {
    p0 += (p0 * (percent / 100) + aug).toInt();
    elapsedYear++;
  }
  return elapsedYear;
}
