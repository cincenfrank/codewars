final validCombination = ["()", "{}", "[]"];

bool validBraces(String braces) {
  if (braces.length.isOdd) return false;

  String newString = braces;
  for (var i = 0; i < braces.length / 2; i++) {
    String startingString = newString;
    print(startingString);
    for (var y = 0; y < validCombination.length; y++) {
      newString = newString.replaceAll(validCombination[y], "");
    }
    if (startingString == newString) break;
    if (newString == '') break;
  }
  return newString == "";
}
