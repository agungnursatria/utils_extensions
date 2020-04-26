import 'package:utils_extensions/utils/validator.dart' as Util;

/// Num extension works on int and double data type too
extension NumValidator on num {
  /// Checks if num data is LOWER than comparedTo.
  bool isLowerThan(num compareTo) => this < compareTo;

  /// Checks if num data is GREATER than comparedTo.
  bool isGreaterThan(num compareTo) => this > compareTo;

  /// Checks if num data is EQUAL to compared one.
  bool isEqualTo(num compareTo) => this == compareTo;

  /// Checks if string is phone number.
  bool isPhoneNumber({int minLength, int maxLength}) =>
      Util.isPhoneNumber(this.toString()) &&
      ((minLength != null)
          ? Util.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null) ? Util.isLengthLowerOrEqual(this, maxLength) : true);

  /// Checks if data is null or empty.
  bool isNullOrEmpty() => Util.isNullOrEmpty(this);

  /// Checks if length of num is LOWER than maxLength.
  bool isLengthLowerThan(int maxLength) =>
      Util.isLengthLowerThan(this, maxLength);

  /// Checks if length of num is LOWER OR EQUAL to maxLength.
  bool isLengthLowerOrEqual(int maxLength) =>
      Util.isLengthLowerOrEqual(this, maxLength);

  /// Checks if length of num is GREATER than maxLength.
  bool isLengthGreaterThan(int maxLength) =>
      Util.isLengthGreaterThan(this, maxLength);

  /// Checks if length of num is GREATER OR EQUAL to maxLength.
  bool isLengthGreaterOrEqual(int maxLength) =>
      Util.isLengthGreaterOrEqual(this, maxLength);

  /// Checks if length of num is EQUAL than maxLength.
  bool isLengthEqualTo(int maxLength) => Util.isLengthEqualTo(this, maxLength);

  /// Checks if length of num is BETWEEN minLength to maxLength.
  bool isLengthBetween(int minLength, int maxLength) =>
      Util.isLengthBetween(this, minLength, maxLength);
}
