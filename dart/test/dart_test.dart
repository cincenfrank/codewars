import "package:test/test.dart";
import "../bin/are_they_the_same.dart";
import "../bin/valid_braces.dart";

void main() {
  test('ValidBraces', () {
    expect(validBraces('()'), isTrue);
    expect(validBraces('[(])'), isFalse);
  });

  dotest(List<int> a1, List<int> a2, bool exp) {
    test("Testing for $a1: $a2:", () => expect(comp(a1, a2), equals(exp)));
  }

  group("fixed tests", () {
    var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
    var a2 = [
      11 * 11,
      121 * 121,
      144 * 144,
      19 * 19,
      161 * 161,
      19 * 19,
      144 * 144,
      19 * 19
    ];
    dotest(a1, a2, true);
    a1 = [121, 144, 19, 161, 19, 144, 19, 11];
    a2 = [
      11 * 21,
      121 * 121,
      144 * 144,
      19 * 19,
      161 * 161,
      19 * 19,
      144 * 144,
      19 * 19
    ];
    dotest(a1, a2, false);
  });
}
