import 'package:utils_extensions/src/utils/validator_util.dart';

extension SetValidation on Set {
  /// Checks if data is null or Blank (Empty or only contains whitespace).
  bool isNullOrBlank() => ValidatorUtil.isNullOrBlank(this);
}
