extension CharManipulation on String {
  String get onlyVowels => this.replaceAll(RegExp(r'[^aeiouy]'), '');
  String without(List<String> chars) =>
      this.replaceAll(RegExp(chars.join('|')), '');
}
