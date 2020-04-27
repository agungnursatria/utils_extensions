import 'package:utils_extensions/utils/validator.dart';
import 'package:utils_extensions/utils/transform.dart';

/// Num extension also works on int
extension IntValidation on int {
  /// Checks if int value is Palindrom.
  bool isPalindrom() =>
      Validator.isPalindrom(TransformUtil.numericOnly(this.toString()));

  /// Checks if string is binary (example: 01010101).
  bool isBinary() => Validator.isBinary(this.toString());
}
