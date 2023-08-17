// See https://pub.dartlang.org/packages/test
import "package:test/test.dart";
import '../solution.dart';

void main() {
  test("getCount", () {
    expect(getCount("bcdfghjklmnpqrstvwxy"), equals(0));
    expect(getCount("abcde"), equals(2));
    expect(getCount("aeiou"), equals(5));
    expect(getCount("abracadabra"), equals(5));
  });
}
