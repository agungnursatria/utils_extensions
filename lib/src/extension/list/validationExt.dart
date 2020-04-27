import 'dart:convert';
import 'package:utils_extensions/src/utils/transform_util.dart';
import 'package:utils_extensions/src/utils/validator_util.dart';

extension ListValidation on List {
  /// Checks if int value is Palindrom.
  bool isPalindrom() =>
      ValidatorUtil.isPalindrom(TransformUtil.numericOnly(this.toString()));

  /// Checks if data is null or Blank (Empty or only contains whitespace).
  bool isNullOrBlank() => ValidatorUtil.isNullOrBlank(this);

  /// Checks if all value inside list are same.
  /// Example: [1,1,1,1] -> true
  bool isOneAKind() => ValidatorUtil.isOneAKind(this);
}

extension ListParse on Map {
  // Transform list to json
  String toJsonString() => jsonEncode(this);
}
