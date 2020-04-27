import 'package:utils_extensions/utils/validator.dart';

/// Num extension also works on int and double data type
extension NumValidation on num {
  /// Checks if num data is LOWER than comparedTo.
  bool isLowerThan(num compareTo) => this < compareTo;

  /// Checks if num data is GREATER than comparedTo.
  bool isGreaterThan(num compareTo) => this > compareTo;

  /// Checks if num data is EQUAL to compared one.
  bool isEqualTo(num compareTo) => this == compareTo;

  /// Checks if string is phone number.
  bool isPhoneNumber({int minLength, int maxLength}) =>
      Validator.isPhoneNumber(this.toString()) &&
      ((minLength != null)
          ? Validator.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null)
          ? Validator.isLengthLowerOrEqual(this, maxLength)
          : true);

  /// Checks if data is null or Blank (Empty or only contains whitespace).
  bool isNullOrBlank() => Validator.isNullOrBlank(this);

  /// Checks if length of num is LOWER than maxLength.
  bool isLengthLowerThan(int maxLength) =>
      Validator.isLengthLowerThan(this, maxLength);

  /// Checks if length of num is LOWER OR EQUAL to maxLength.
  bool isLengthLowerOrEqual(int maxLength) =>
      Validator.isLengthLowerOrEqual(this, maxLength);

  /// Checks if length of num is GREATER than maxLength.
  bool isLengthGreaterThan(int maxLength) =>
      Validator.isLengthGreaterThan(this, maxLength);

  /// Checks if length of num is GREATER OR EQUAL to maxLength.
  bool isLengthGreaterOrEqual(int maxLength) =>
      Validator.isLengthGreaterOrEqual(this, maxLength);

  /// Checks if length of num is EQUAL than maxLength.
  bool isLengthEqualTo(int maxLength) =>
      Validator.isLengthEqualTo(this, maxLength);

  /// Checks if length of num is BETWEEN minLength to maxLength.
  bool isLengthBetween(int minLength, int maxLength) =>
      Validator.isLengthBetween(this, minLength, maxLength);
}
