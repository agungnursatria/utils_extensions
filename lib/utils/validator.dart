import 'package:utils_extensions/utils/regexPattern.dart';

/// Checks if data is null or empty.
bool isNullOrEmpty(dynamic s) {
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
      return true;
  }
}

/// Checks if a contains b (Treating or interpreting upper- and lowercase letters as being the same).
bool isContainsOnCaseInsensitive(String a, String b) =>
    a.toLowerCase().contains(b.toLowerCase());

/// Checks if a contains b or b contains a (Treating or interpreting upper- and lowercase letters as being the same).
bool isContainsAnyOnCaseInsensitive(String a, String b) {
  String lowA = a.toLowerCase();
  String lowB = b.toLowerCase();
  return lowA.contains(lowB) || lowB.contains(lowA);
}

/// Checks if string is numeric.
bool isNumeric(String s) {
  if (s == null) return false;
  return num.tryParse(s) is num ?? false;
}

/// Checks if string is boolean.
bool isBool(String s) {
  if (s == null) return false;
  return (s == 'true' || s == 'false');
}

/// Checks if string is an vector file.
bool isVector(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.vector, caseSensitive: false);
  return regex.hasMatch(s);
}

/// Checks if string is an image file.
bool isImage(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.image, caseSensitive: false);
  return regex.hasMatch(s);
}

/// Checks if string is uri.
bool isUri(String s, [bool caseSensitive = false]) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.uri, caseSensitive: caseSensitive);
  return regex.hasMatch(s);
}

/// Checks if string is email.
bool isEmail(String s, [bool caseSensitive = false]) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.email, caseSensitive: caseSensitive);
  return regex.hasMatch(s);
}

/// Checks if string is phone number.
bool isPhoneNumber(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.phone);
  return regex.hasMatch(s);
}

/// Checks if string is MD5 hash.
bool isMD5(String s) {
  if (s == null || !isLengthEqualTo(s, 32)) return false;
  final RegExp regex = RegExp(RegexPattern.md5);
  return regex.hasMatch(s);
}

/// Checks if string is SHA1 hash.
bool isSHA1(String s) {
  if (s == null || !isLengthEqualTo(s, 40)) return false;
  final RegExp regex = RegExp(RegexPattern.sha1);
  return regex.hasMatch(s);
}

/// Checks if string is SHA256 hash.
bool isSHA256(String s) {
  if (s == null || !isLengthEqualTo(s, 64)) return false;
  final RegExp regex = RegExp(RegexPattern.sha1);
  return regex.hasMatch(s);
}

/// Checks if string is ISBN 10 or 13.
bool isISBN(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.isbn);
  return regex.hasMatch(s);
}

/// Checks if string is Github Repository.
bool isGithubRepo(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.github);
  return regex.hasMatch(s);
}

/// Checks if string is SSN (Social Security Number).
bool isSSN(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.ssn);
  return regex.hasMatch(s);
}

/// Checks if string is binary.
bool isBinary(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.binary);
  return regex.hasMatch(s);
}

/// Checks if string is IPv4.
bool isIPv4(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.ipv4);
  return regex.hasMatch(s);
}

/// Checks if string is IPv6.
bool isIPv6(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.ipv4);
  return regex.hasMatch(s);
}

/// Checks if string is hexadecimal.
bool isHexadecimal(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.hexColor);
  return regex.hasMatch(s);
}

/// Checks if string is Passport No.
bool isPassport(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.passport);
  return regex.hasMatch(s);
}

/// Checks if string is US Currency.
bool isUSCurrency(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.usCurrency);
  return regex.hasMatch(s);
}

/// Checks if string is Indonesia Currency.
bool isIndonesiaCurrency(String s) {
  if (s == null) return false;
  final RegExp regex = RegExp(RegexPattern.idCurrency);
  return regex.hasMatch(s);
}

/// Checks if length of data is LOWER than maxLength.
bool isLengthLowerThan(dynamic s, int maxLength) {
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
bool isLengthGreaterThan(dynamic s, int maxLength) {
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
bool isLengthGreaterOrEqual(dynamic s, int maxLength) {
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
bool isLengthLowerOrEqual(dynamic s, int maxLength) {
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
bool isLengthEqualTo(dynamic s, int maxLength) {
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
bool isLengthBetween(dynamic s, int minLength, int maxLength) {
  if (s == null) return false;
  return isLengthGreaterOrEqual(s, minLength) &&
      isLengthLowerOrEqual(s, maxLength);
}

/// Checks if num a LOWER than num b.
bool isLowerThan(num a, num b) => a < b;

/// Checks if num a GREATER than num b.
bool isGreaterThan(num a, num b) => a > b;

/// Checks if num a EQUAL than num b.
bool isEqual(num a, num b) => a == b;
