import 'dart:convert';

import 'package:utils_extensions/utils/validator.dart';
import 'package:utils_extensions/utils/transform.dart';

extension ListValidation on List {
  /// Checks if int value is Palindrom.
  bool isPalindrom() =>
      Validator.isPalindrom(TransformUtil.numericOnly(this.toString()));

  /// Checks if data is null or Blank (Empty or only contains whitespace).
  bool isNullOrBlank() => Validator.isNullOrBlank(this);

  /// Checks if all value inside list are same.
  bool isOneAKind() => Validator.isOneAKind(this);
}

extension ListParse on Map {
  // Transform list to json
  String toJsonString() => jsonEncode(this);
}
