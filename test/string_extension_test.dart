// See https://pub.dartlang.org/packages/test
import "package:test/test.dart";
import '../string_extension.dart';

void main() {
  group(
    "StringExtension",
    () {
      test("onlyVowels", () {
        expect("bcdfghjklmnpqrstvwxy".onlyVowels, equals("y"));
        expect("abcde".onlyVowels, equals("ae"));
        expect("aeiou".onlyVowels, equals("aeiou"));
        expect("abracadabra".onlyVowels, equals("aaaaa"));
      });
      test("without", () {
        expect("bcdfghjklmnpqrstvwxy".without(['y']),
            equals("bcdfghjklmnpqrstvwx"));
        expect("abcde".without(['a', 'e']), equals("bcd"));
        expect("aeiou".without(['a', 'e', 'i', 'o', 'u']), equals(""));
        expect("abracadabra".without(['a', 'b', 'r']), equals("cd"));
      });
    },
  );
}
