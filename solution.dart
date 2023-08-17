import 'string_extension.dart';

int getCount(String inputStr) {
  return inputStr.onlyVowels.without(['y']).length;
}
