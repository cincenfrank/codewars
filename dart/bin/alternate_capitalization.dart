List<String> capitalize(String x) {
  return [
    x
        .split('')
        .asMap()
        .entries
        .map((e) => e.key.isEven ? e.value.toUpperCase() : e.value)
        .join(),
    x
        .split('')
        .asMap()
        .entries
        .map((e) => e.key.isOdd ? e.value.toUpperCase() : e.value)
        .join(),
  ];
}
