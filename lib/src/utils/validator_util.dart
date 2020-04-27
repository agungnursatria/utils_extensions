import 'package:utils_extensions/src/utils/regex_pattern.dart';

class ValidatorUtil {
  /// Checks if data is null or blank (empty or only contains whitespace).
  static bool isNullOrBlank(dynamic s) {
    if (s == null) return true;
    switch (s.runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return s.isEmpty;
        break;
      default:
        return s.toString() == 'null' || s.toString().trim().isEmpty;
    }
  }

  /// Checks if a contains b (Treating or interpreting upper- and lowercase letters as being the same).
  static bool isContainsOnCaseInsensitive(String a, String b) =>
      a.toLowerCase().contains(b.toLowerCase());

  /// Checks if a contains b or b contains a (Treating or interpreting upper- and lowercase letters as being the same).
  static bool isContainsAnyOnCaseInsensitive(String a, String b) {
    String lowA = a.toLowerCase();
    String lowB = b.toLowerCase();
    return lowA.contains(lowB) || lowB.contains(lowA);
  }

  /// Checks if string is numeric.
  static bool isNumeric(String s) {
    if (s == null) return false;
    return num.tryParse(s) is num ?? false;
  }

  /// Checks if string is digit only.
  /// Digit only is same to int data type
  static bool isDigitOnly(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.digitOnly);
    return regex.hasMatch(s);
  }

  /// Checks if string is boolean.
  static bool isBool(String s) {
    if (s == null) return false;
    return (s == 'true' || s == 'false');
  }

  /// Checks if string is an vector file.
  static bool isVector(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.vector, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an image file.
  static bool isImage(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.image, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an audio file.
  static bool isAudio(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.audio, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an video file.
  static bool isVideo(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.video, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an image file.
  static bool isTxt(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.image, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an Doc file.
  static bool isDocument(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.document, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an Excel file.
  static bool isExcel(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.excel, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an PPT file.
  static bool isPPT(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.ppt, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an APK file.
  static bool isAPK(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.apk, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an video file.
  static bool isPDF(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.pdf, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is an HTML file.
  static bool isHTML(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.html, caseSensitive: false);
    return regex.hasMatch(s);
  }

  /// Checks if string is URL.
  static bool isURL(String s, [bool caseSensitive = false]) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.url, caseSensitive: caseSensitive);
    return regex.hasMatch(s);
  }

  /// Checks if string is email.
  static bool isEmail(String s, [bool caseSensitive = false]) {
    if (s == null) return false;
    final RegExp regex =
        RegExp(RegexPattern.email, caseSensitive: caseSensitive);
    return regex.hasMatch(s);
  }

  /// Checks if string is phone number.
  static bool isPhoneNumber(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.phone);
    return regex.hasMatch(s);
  }

  /// Checks if string is DateTime (UTC or Iso8601).
  static bool isDateTime(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.basicDateTime);
    return regex.hasMatch(s);
  }

  /// Checks if string is MD5 hash.
  static bool isMD5(String s) {
    if (s == null || !isLengthEqualTo(s, 32)) return false;
    final RegExp regex = RegExp(RegexPattern.md5);
    return regex.hasMatch(s);
  }

  /// Checks if string is SHA1 hash.
  static bool isSHA1(String s) {
    if (s == null || !isLengthEqualTo(s, 40)) return false;
    final RegExp regex = RegExp(RegexPattern.sha1);
    return regex.hasMatch(s);
  }

  /// Checks if string is SHA256 hash.
  static bool isSHA256(String s) {
    if (s == null || !isLengthEqualTo(s, 64)) return false;
    final RegExp regex = RegExp(RegexPattern.sha1);
    return regex.hasMatch(s);
  }

  /// Checks if string is ISBN 10 or 13.
  static bool isISBN(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.isbn);
    return regex.hasMatch(s);
  }

  /// Checks if string is Github Repository.
  static bool isGithubRepo(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.github);
    return regex.hasMatch(s);
  }

  /// Checks if string is SSN (Social Security Number).
  static bool isSSN(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.ssn);
    return regex.hasMatch(s);
  }

  /// Checks if string is binary.
  static bool isBinary(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.binary);
    return regex.hasMatch(s);
  }

  /// Checks if string is IPv4.
  static bool isIPv4(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.ipv4);
    return regex.hasMatch(s);
  }

  /// Checks if string is IPv6.
  static bool isIPv6(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.ipv4);
    return regex.hasMatch(s);
  }

  /// Checks if string is hexadecimal.
  static bool isHexadecimal(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.hexColor);
    return regex.hasMatch(s);
  }

  /// Checks if string is Palindrom.
  static bool isPalindrom(String s) {
    bool isPalindrom = true;
    for (var i = 0; i < s.length; i++) {
      if (s[i] != s[s.length - i - 1]) isPalindrom = false;
    }
    return isPalindrom;
  }

  /// Checks if all data have same value.
  /// Example: 111111 -> true, wwwww -> true, [1,1,1,1] -> true
  static bool isOneAKind(dynamic s) {
    if ((s is String || s is List) && !isNullOrBlank(s)) {
      var first = s[0];
      var isOneAKind = true;
      for (var i = 0; i < s.length; i++) {
        if (s[i] != first) isOneAKind = false;
      }
      return isOneAKind;
    }
    if (s is int) {
      String value = s.toString();
      var first = value[0];
      var isOneAKind = true;
      for (var i = 0; i < value.length; i++) {
        if (value[i] != first) isOneAKind = false;
      }
      return isOneAKind;
    }
    return false;
  }

  /// Checks if string is Passport No.
  static bool isPassport(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.passport);
    return regex.hasMatch(s);
  }

  /// Checks if string is Currency.
  static bool isCurrency(String s) {
    if (s == null) return false;
    final RegExp regex = RegExp(RegexPattern.currency);
    return regex.hasMatch(s);
  }

  /// Checks if length of data is LOWER than maxLength.
  static bool isLengthLowerThan(dynamic s, int maxLength) {
    if (s == null) return (maxLength <= 0) ? true : false;
    switch (s.runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return s.length < maxLength;
        break;
      case int:
        return s.toString().length < maxLength;
        break;
      case double:
        return s.toString().replaceAll('.', '').length < maxLength;
        break;
      default:
        return false;
    }
  }

  /// Checks if length of data is GREATER than maxLength.
  static bool isLengthGreaterThan(dynamic s, int maxLength) {
    if (s == null) return false;
    switch (s.runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return s.length > maxLength;
        break;
      case int:
        return s.toString().length > maxLength;
        break;
      case double:
        return s.toString().replaceAll('.', '').length > maxLength;
        break;
      default:
        return false;
    }
  }

  /// Checks if length of data is GREATER OR EQUAL to maxLength.
  static bool isLengthGreaterOrEqual(dynamic s, int maxLength) {
    if (s == null) return false;
    switch (s.runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return s.length >= maxLength;
        break;
      case int:
        return s.toString().length >= maxLength;
        break;
      case double:
        return s.toString().replaceAll('.', '').length >= maxLength;
        break;
      default:
        return false;
    }
  }

  /// Checks if length of data is LOWER OR EQUAL to maxLength.
  static bool isLengthLowerOrEqual(dynamic s, int maxLength) {
    if (s == null) return false;
    switch (s.runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return s.length <= maxLength;
        break;
      case int:
        return s.toString().length <= maxLength;
        break;
      case double:
        return s.toString().replaceAll('.', '').length <= maxLength;
      default:
        return false;
    }
  }

  /// Checks if length of data is EQUAL to maxLength.
  static bool isLengthEqualTo(dynamic s, int maxLength) {
    if (s == null) return false;
    switch (s.runtimeType) {
      case String:
      case List:
      case Map:
      case Set:
      case Iterable:
        return s.length == maxLength;
        break;
      case int:
        return s.toString().length == maxLength;
        break;
      case double:
        return s.toString().replaceAll('.', '').length == maxLength;
        break;
      default:
        return false;
    }
  }

  /// Checks if length of data is BETWEEN minLength to maxLength.
  static bool isLengthBetween(dynamic s, int minLength, int maxLength) {
    if (s == null) return false;
    return isLengthGreaterOrEqual(s, minLength) &&
        isLengthLowerOrEqual(s, maxLength);
  }

  /// Checks if num a LOWER than num b.
  static bool isLowerThan(num a, num b) => a < b;

  /// Checks if num a GREATER than num b.
  static bool isGreaterThan(num a, num b) => a > b;

  /// Checks if num a EQUAL than num b.
  static bool isEqual(num a, num b) => a == b;
}
