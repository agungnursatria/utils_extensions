import 'package:utils_extensions/src/utils/validator_util.dart';

extension MapValidation on Map {
  /// Checks if data is null or Blank (Empty or only contains whitespace).
  bool isNullOrBlank() => ValidatorUtil.isNullOrBlank(this);
}
