import 'package:utils_extensions/src/utils/transform_util.dart';
import 'package:utils_extensions/src/utils/validator_util.dart';

extension StringValidation on String {
  /// Checks if data is null or Blank (empty or only contains whitespace).
  bool isNullOrBlank() => ValidatorUtil.isNullOrBlank(this);

  /// Checks if string is numeric.
  bool isNumeric() => ValidatorUtil.isNumeric(this);

  /// Checks if string is boolean.
  bool isBool() => ValidatorUtil.isBool(this);

  /// Checks if string is vector image file path.
  bool isVector() => ValidatorUtil.isVector(this);

  /// Checks if string is image file path.
  bool isImage() => ValidatorUtil.isImage(this);

  /// Checks if string is audio file path.
  bool isAudio() => ValidatorUtil.isAudio(this);

  /// Checks if string is video file path.
  bool isVideo() => ValidatorUtil.isVideo(this);

  /// Checks if string is txt file path.
  bool isTxt() => ValidatorUtil.isTxt(this);

  /// Checks if string is Doc file path.
  bool isDocument() => ValidatorUtil.isDocument(this);

  /// Checks if string is Excel file path.
  bool isExcel() => ValidatorUtil.isExcel(this);

  /// Checks if string is powerpoint file path.
  bool isPPT() => ValidatorUtil.isPPT(this);

  /// Checks if string is APK file path.
  bool isApk() => ValidatorUtil.isAPK(this);

  /// Checks if string is PDF file path.
  bool isPDF() => ValidatorUtil.isPDF(this);

  /// Checks if string is html file path.
  bool isHTML() => ValidatorUtil.isHTML(this);

  /// Checks if string is URL.
  bool isURL() => ValidatorUtil.isURL(this);

  /// Checks if string is DateTime (UTC or Iso8601).
  bool isDateTime() => ValidatorUtil.isDateTime(this);

  /// Checks if string is email.
  bool isEmail({int minLength, int maxLength}) =>
      ValidatorUtil.isEmail(this) &&
      ((minLength != null)
          ? ValidatorUtil.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null)
          ? ValidatorUtil.isLengthLowerOrEqual(this, maxLength)
          : true);

  /// Checks if string is phone number.
  bool isPhoneNumber({int minLength, int maxLength}) =>
      ValidatorUtil.isPhoneNumber(this) &&
      ((minLength != null)
          ? ValidatorUtil.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null)
          ? ValidatorUtil.isLengthLowerOrEqual(this, maxLength)
          : true);

  /// Checks if string is hexadecimal (example: Hexadecimal for color <#FFFFFF>).
  bool isHexadecimal() => ValidatorUtil.isHexadecimal(this);

  /// Checks if string is MD5
  bool isMD5() => ValidatorUtil.isMD5(this);

  /// Checks if string is SHA251.
  bool isSHA1() => ValidatorUtil.isSHA1(this);

  /// Checks if string is SHA256.
  bool isSHA256() => ValidatorUtil.isSHA256(this);

  /// Checks if string is ISBN (10/13) (example: ISBN 978-3-642-11746-6, ISBN-10 3-642-11746-5,  978-3-642-11746-6).
  bool isISBN() => ValidatorUtil.isISBN(this);

  /// Checks if string is SSN (example: 656-12-1212, 123456789).
  bool isSSN() => ValidatorUtil.isSSN(this);

  /// Checks if string is Passport.
  bool isPassport() => ValidatorUtil.isPassport(this);

  /// Checks if string is Github Repository.
  bool isGithubRepo() => ValidatorUtil.isGithubRepo(this);

  /// Checks if string is binary (example: 01010101).
  bool isBinary() => ValidatorUtil.isBinary(this);

  /// Checks if string is Palindrom.
  bool isPalindrom() => ValidatorUtil.isPalindrom(this);

  /// Checks if all character inside string are same.
  /// Example: 111111 -> true, wwwww -> true
  bool isOneAKind() => ValidatorUtil.isOneAKind(this);

  /// Checks if string is Currency.
  bool isCurrency() => ValidatorUtil.isCurrency(this);

  /// Checks if string is IPv4.
  bool isIPv4() => ValidatorUtil.isIPv4(this);

  /// Checks if string is IPv6.
  bool isIPv6() => ValidatorUtil.isIPv6(this);

  /// Checks if length of string is LOWER than maxLength.
  bool isLengthLowerThan(int maxLength) =>
      ValidatorUtil.isLengthLowerThan(this, maxLength);

  /// Checks if length of string is LOWER OR EQUAL to maxLength.
  bool isLengthLowerOrEqual(int maxLength) =>
      ValidatorUtil.isLengthLowerOrEqual(this, maxLength);

  /// Checks if length of string is GREATER than maxLength.
  bool isLengthGreaterThan(int maxLength) =>
      ValidatorUtil.isLengthGreaterThan(this, maxLength);

  /// Checks if length of string is GREATER OR EQUAL to maxLength.
  bool isLengthGreaterOrEqual(int maxLength) =>
      ValidatorUtil.isLengthGreaterOrEqual(this, maxLength);

  /// Checks if length of string is EQUAL than maxLength.
  bool isLengthEqualTo(int maxLength) =>
      ValidatorUtil.isLengthEqualTo(this, maxLength);

  /// Checks if length of string is BETWEEN minLength to maxLength.
  bool isLengthBetween(int minLength, int maxLength) =>
      ValidatorUtil.isLengthBetween(this, minLength, maxLength);

  /// Checks if a contains b (Treating or interpreting upper- and lowercase letters as being the same).
  bool isContainsOnCaseInsensitive(String compareTo) =>
      ValidatorUtil.isContainsOnCaseInsensitive(this, compareTo);

  /// Checks if a contains b or b contains a (Treating or interpreting upper- and lowercase letters as being the same).
  bool isContainsAnyOnCaseInsensitive(String compareTo) =>
      ValidatorUtil.isContainsAnyOnCaseInsensitive(this, compareTo);

  /// Checks if string value is camelcase.
  bool isCamelCase() => this == TransformUtil.camelCase(this);

  /// Checks if string value is capitalize.
  bool isCapitalize({bool firstOnly = false}) =>
      this == TransformUtil.capitalize(this, firstOnly: firstOnly);
}
