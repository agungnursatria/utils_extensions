import 'package:utils_extensions/utils/transform.dart';

/// Num extension also works on int
extension IntParse on int {
  /// Transform int value to binary string
  String toBinary() => TransformUtil.toBinary(this);

  /// Transform int millisecondsSinceEpoch (DateTime) to DateTime
  DateTime toDateTime() => DateTime.fromMillisecondsSinceEpoch(this);
}
