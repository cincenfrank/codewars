List<int> partsSums(List<int> ls) {
// NOT EFFICIENT
  // return ls.reversed.fold(
  //     [0],
  //     (previousValue, element) =>
  //         previousValue..insert(0, previousValue.first + element))

  // List<int> ls2 = ls.reversed.toList();
  // List<int> toReturn = [0];
  // int counter = 0;
  // for (var i = 0; i < ls2.length; i++) {
  //   counter += ls2[i];
  //   toReturn.insert(0, counter);
  // }
  // return toReturn;

  //OK
  // List<int> toReturn = List.generate(ls.length + 1, (index) => 0);
  // for (var i = ls.length - 1; i >= 0; i--) {
  //   toReturn[i] = toReturn[i + 1] + ls[i];
  // }

  // return toReturn;
  List<int> toReturn = List.generate(ls.length + 1, (index) => 0);
  ls.asMap().entries.toList().reversed.forEach((element) {
    toReturn[element.key] = toReturn[element.key + 1] + element.value;
  });
  return toReturn;
}
