String stockSummary(List<String> lstOfArt, List<String> lstOf1stLetter) {
  // your code
  //(A : 20) - (B : 114) - (C : 50) - (W : 0)
  return lstOfArt.isEmpty
      ? ''
      : lstOf1stLetter
          .map((e) =>
              '($e : ${lstOfArt.fold(0, (previousValue, element) => previousValue + (element.startsWith(e) ? int.parse(element.split(' ').last) : 0))})')
          .join(' - ');
}
