import 'package:utils_extensions/utils/validator.dart';
import 'package:utils_extensions/utils_extensions.dart';

extension StringValidation on String {
  /// Checks if data is null or Blank (empty or only contains whitespace).
  bool isNullOrBlank() => Validator.isNullOrBlank(this);

  /// Checks if string is numeric.
  bool isNumeric() => Validator.isNumeric(this);

  /// Checks if string is boolean.
  bool isBool() => Validator.isBool(this);

  /// Checks if string is vector image.
  bool isVector() => Validator.isVector(this);

  /// Checks if string is image.
  bool isImage() => Validator.isImage(this);

  /// Checks if string is uri.
  bool isUri() => Validator.isUri(this);

  /// Checks if string is DateTime (UTC or Iso8601).
  bool isDateTime() => Validator.isDateTime(this);

  /// Checks if string is email.
  bool isEmail({int minLength, int maxLength}) =>
      Validator.isEmail(this) &&
      ((minLength != null)
          ? Validator.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null)
          ? Validator.isLengthLowerOrEqual(this, maxLength)
          : true);

  /// Checks if string is phone number.
  bool isPhoneNumber({int minLength, int maxLength}) =>
      Validator.isPhoneNumber(this) &&
      ((minLength != null)
          ? Validator.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null)
          ? Validator.isLengthLowerOrEqual(this, maxLength)
          : true);

  /// Checks if string is hexadecimal (example: Hexadecimal for color <#FFFFFF>).
  bool isHexadecimal() => Validator.isHexadecimal(this);

  /// Checks if string is MD5
  bool isMD5() => Validator.isMD5(this);

  /// Checks if string is SHA251.
  bool isSHA1() => Validator.isSHA1(this);

  /// Checks if string is SHA256.
  bool isSHA256() => Validator.isSHA256(this);

  /// Checks if string is ISBN (10/13) (example: ISBN 978-3-642-11746-6, ISBN-10 3-642-11746-5,  978-3-642-11746-6).
  bool isISBN() => Validator.isISBN(this);

  /// Checks if string is SSN (example: 656-12-1212, 123456789).
  bool isSSN() => Validator.isSSN(this);

  /// Checks if string is Passport.
  bool isPassport() => Validator.isPassport(this);

  /// Checks if string is Github Repository.
  bool isGithubRepo() => Validator.isGithubRepo(this);

  /// Checks if string is binary (example: 01010101).
  bool isBinary() => Validator.isBinary(this);

  /// Checks if string is Palindrom.
  bool isPalindrom() => Validator.isPalindrom(this);

  /// Checks if all character inside string are same.
  /// Example: 111111 -> true, wwwww -> true
  bool isOneAKind() => Validator.isOneAKind(this);

  /// Checks if string is Currency.
  bool isCurrency() => Validator.isCurrency(this);

  /// Checks if string is IPv4.
  bool isIPv4() => Validator.isIPv4(this);

  /// Checks if string is IPv6.
  bool isIPv6() => Validator.isIPv6(this);

  /// Checks if length of string is LOWER than maxLength.
  bool isLengthLowerThan(int maxLength) =>
      Validator.isLengthLowerThan(this, maxLength);

  /// Checks if length of string is LOWER OR EQUAL to maxLength.
  bool isLengthLowerOrEqual(int maxLength) =>
      Validator.isLengthLowerOrEqual(this, maxLength);

  /// Checks if length of string is GREATER than maxLength.
  bool isLengthGreaterThan(int maxLength) =>
      Validator.isLengthGreaterThan(this, maxLength);

  /// Checks if length of string is GREATER OR EQUAL to maxLength.
  bool isLengthGreaterOrEqual(int maxLength) =>
      Validator.isLengthGreaterOrEqual(this, maxLength);

  /// Checks if length of string is EQUAL than maxLength.
  bool isLengthEqualTo(int maxLength) =>
      Validator.isLengthEqualTo(this, maxLength);

  /// Checks if length of string is BETWEEN minLength to maxLength.
  bool isLengthBetween(int minLength, int maxLength) =>
      Validator.isLengthBetween(this, minLength, maxLength);

  /// Checks if a contains b (Treating or interpreting upper- and lowercase letters as being the same).
  bool isContainsOnCaseInsensitive(String compareTo) =>
      Validator.isContainsOnCaseInsensitive(this, compareTo);

  /// Checks if a contains b or b contains a (Treating or interpreting upper- and lowercase letters as being the same).
  bool isContainsAnyOnCaseInsensitive(String compareTo) =>
      Validator.isContainsAnyOnCaseInsensitive(this, compareTo);

  bool isCamelCase() => this == TransformUtil.camelCase(this);

  bool isCapitalized({bool firstOnly = false}) =>
      this == TransformUtil.capitalize(this, firstOnly: firstOnly);
}
