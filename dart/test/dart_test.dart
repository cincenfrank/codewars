import "package:test/test.dart";
import "../bin/valid_braces.dart";

void main() {
  test('ValidBraces', () {
    expect(validBraces('()'), isTrue);
    expect(validBraces('[(])'), isFalse);
  });
}
