import 'package:utils_extensions/src/utils/transform_util.dart';
import 'package:utils_extensions/src/utils/validator_util.dart';

extension StringParse on String {
  /// Transform string to int type
  int toInt({bool nullOnError = false}) =>
      nullOnError ? int.tryParse(this) : int.parse(this);

  /// Transform string to double type
  double toDouble({bool nullOnError = false}) =>
      nullOnError ? double.tryParse(this) : double.parse(this);

  /// Transform string to num type
  num toNum({bool nullOnError = false}) =>
      nullOnError ? num.tryParse(this) : num.parse(this);

  /// Transform String millisecondsSinceEpoch (DateTime) to DateTime
  DateTime toDateTime() {
    int miliseconds = this.toInt(nullOnError: true);
    if (ValidatorUtil.isNullOrBlank(miliseconds)) return null;
    return DateTime.fromMillisecondsSinceEpoch(miliseconds);
  }

  /// Transform string value to binary
  /// Example: 15 => 1111
  String toBinary({bool nullOnError = false}) {
    if (!ValidatorUtil.isNumeric(this)) {
      if (nullOnError) return null;
      throw FormatException("Only accepting integer value");
    }
    return TransformUtil.toBinary(int.parse(this));
  }

  /// Transform binary to int value
  /// Example: 1111 => 15
  int toIntFromBinary({bool nullOnError = false}) {
    if (!ValidatorUtil.isBinary(this)) {
      if (nullOnError) return null;
      throw FormatException("Only accepting binary value");
    }
    return TransformUtil.fromBinary(this);
  }

  /// Transform string value to SSN (Social Security Number)
  /// Example: 123456789
  String toSSN({bool nullOnError = false}) {
    String ssn = TransformUtil.toSSN(this);
    if (!ValidatorUtil.isNullOrBlank(ssn)) return ssn;
    if (nullOnError) return null;
    throw FormatException("Only accepting SSN value");
  }

  /// Capitalize each word inside string
  /// Example: your name => Your Name, your name => Your name
  ///
  /// If First Only is `true`, the only letter get uppercase is the first letter
  String toCapitalize({bool firstOnly = false}) =>
      TransformUtil.capitalize(this, firstOnly: firstOnly);

  /// Capitalize each word inside string
  /// Example: your name => yourName
  String toCamelCase() => TransformUtil.camelCase(this);

  /// Extract numeric value of string
  /// Example: OTP 12312 27/04/2020 => 1231227042020ß
  /// If firstword only is true, then the example return is "12312" (first found numeric word)
  String toNumericOnly() => TransformUtil.numericOnly(this);
}