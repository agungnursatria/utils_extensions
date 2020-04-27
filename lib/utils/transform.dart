import 'package:utils_extensions/utils/validator.dart';

class TransformUtil {
  /// Transform int value to binary
  /// Example: 15 => 1111
  static String toBinary(int i) => i.toRadixString(2);

  /// Transform binary to int value
  /// Example: 1111 => 15
  static int fromBinary(String binaryStr) => int.tryParse(binaryStr, radix: 2);

  /// Capitalize each word inside string
  /// Example: your name => Your Name, your name => Your name
  ///
  /// If First Only is `true`, the only letter get uppercase is the first letter
  static String capitalize(String s, {bool firstOnly = false}) {
    if (Validator.isNullOrBlank(s)) return null;
    if (firstOnly) return capitalizeFirst(s);

    List lst = s.split(' ');
    String newStr = '';
    for (var s in lst) newStr += capitalizeFirst(s);
    return newStr;
  }

  /// Uppercase first letter inside string and let the others lowercase
  /// Example: your name => Your name
  static String capitalizeFirst(String s) {
    if (Validator.isNullOrBlank(s)) return null;
    return s[0].toUpperCase() + s.substring(1).toLowerCase();
  }

  /// Remove all whitespace inside string
  /// Example: your name => yourname
  static String removeAllWhitespace(String s) {
    if (Validator.isNullOrBlank(s)) return null;
    return s.replaceAll(' ', '');
  }

  /// Camelcase string
  /// Example: your name => yourName
  static String camelCase(String s) {
    if (Validator.isNullOrBlank(s)) return null;
    return s[0].toLowerCase() + removeAllWhitespace(capitalize(s)).substring(1);
  }

  /// Extract numeric value of string
  /// Example: OTP 12312 27/04/2020 => 1231227042020ß
  /// If firstword only is true, then the example return is "12312" (first found numeric word)
  static String numericOnly(String s, {bool firstWordOnly = false}) {
    String numericOnlyStr = '';
    for (var i = 0; i < s.length; i++) {
      if (Validator.isDigitOnly(s[i])) numericOnlyStr += s[i];
      if (firstWordOnly && numericOnlyStr.isNotEmpty && s[i] == " ") break;
    }
    return numericOnlyStr;
  }

  /// Transform string to SSN (Social Security Number)
  /// Example: 123456789
  static String toSSN(String s) {
    if (Validator.isNumeric(s) && Validator.isLengthEqualTo(s, 9)) {
      return "${s.substring(0, 3)}-${s.substring(3, 5)}-${s.substring(5, 9)}";
    }
    return null;
  }
}
