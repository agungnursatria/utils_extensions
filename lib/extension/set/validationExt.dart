import 'package:utils_extensions/utils/validator.dart';

extension SetValidation on Set {
  /// Checks if data is null or Blank (Empty or only contains whitespace).
  bool isNullOrBlank() => Validator.isNullOrBlank(this);
}
