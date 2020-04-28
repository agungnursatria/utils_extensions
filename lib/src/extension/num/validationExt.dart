import 'package:utils_extensions/src/utils/validator_util.dart';

/// Num extension also works on int and double data type
extension NumValidation on num {
  /// Checks if data is null.
  bool isNull() => ValidatorUtil.isNull(this);

  /// Checks if data is null or Blank (Empty or only contains whitespace).
  bool isNullOrBlank() => ValidatorUtil.isNullOrBlank(this);

  /// Checks if num data is LOWER than comparedTo.
  bool isLowerThan(num compareTo) => this < compareTo;

  /// Checks if num data is GREATER than comparedTo.
  bool isGreaterThan(num compareTo) => this > compareTo;

  /// Checks if num data is EQUAL to compared one.
  bool isEqualTo(num compareTo) => this == compareTo;

  /// Checks if string is phone number.
  bool isPhoneNumber({int minLength, int maxLength}) =>
      ValidatorUtil.isPhoneNumber(this.toString()) &&
      ((minLength != null)
          ? ValidatorUtil.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null)
          ? ValidatorUtil.isLengthLowerOrEqual(this, maxLength)
          : true);

  /// Checks if length of num is LOWER than maxLength.
  bool isLengthLowerThan(int maxLength) =>
      ValidatorUtil.isLengthLowerThan(this, maxLength);

  /// Checks if length of num is LOWER OR EQUAL to maxLength.
  bool isLengthLowerOrEqual(int maxLength) =>
      ValidatorUtil.isLengthLowerOrEqual(this, maxLength);

  /// Checks if length of num is GREATER than maxLength.
  bool isLengthGreaterThan(int maxLength) =>
      ValidatorUtil.isLengthGreaterThan(this, maxLength);

  /// Checks if length of num is GREATER OR EQUAL to maxLength.
  bool isLengthGreaterOrEqual(int maxLength) =>
      ValidatorUtil.isLengthGreaterOrEqual(this, maxLength);

  /// Checks if length of num is EQUAL than maxLength.
  bool isLengthEqualTo(int maxLength) =>
      ValidatorUtil.isLengthEqualTo(this, maxLength);

  /// Checks if length of num is BETWEEN minLength to maxLength.
  bool isLengthBetween(int minLength, int maxLength) =>
      ValidatorUtil.isLengthBetween(this, minLength, maxLength);
}
