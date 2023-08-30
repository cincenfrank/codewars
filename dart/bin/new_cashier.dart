String getOrder(String input) {
  return [
    'Burger',
    'Fries',
    'Chicken',
    'Pizza',
    'Sandwich',
    'Onionrings',
    'Milkshake',
    'Coke'
  ].fold(
      [],
      (previousValue, element) => previousValue
        ..addAll(RegExp(element.toLowerCase())
            .allMatches(input)
            .map((e) => element))).join(' ');
}
