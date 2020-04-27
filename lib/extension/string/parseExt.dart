import 'package:utils_extensions/utils/transform.dart';
import 'package:utils_extensions/utils/validator.dart';

extension StringParse on String {
  /// Parse string to int type
  int toInt({bool nullOnError = false}) =>
      nullOnError ? int.tryParse(this) : int.parse(this);

  /// Parse string to double type
  double toDouble({bool nullOnError = false}) =>
      nullOnError ? double.tryParse(this) : double.parse(this);

  /// Parse string to num type
  num toNum({bool nullOnError = false}) =>
      nullOnError ? num.tryParse(this) : num.parse(this);

  /// Transform String millisecondsSinceEpoch (DateTime) to DateTime
  DateTime toDateTime() {
    int miliseconds = this.toInt(nullOnError: true);
    if (Validator.isNullOrBlank(miliseconds)) return null;
    return DateTime.fromMillisecondsSinceEpoch(miliseconds);
  }

  /// Transform string value to binary string
  String toBinary({bool nullOnError = false}) {
    if (!Validator.isNumeric(this)) {
      if (nullOnError) return null;
      throw Exception("Only accepting integer value");
    }
    return TransformUtil.toBinary(int.parse(this));
  }

  /// Transform binary to int value
  /// Example: 1111 => 15
  int toIntFromBinary({bool nullOnError = false}) {
    if (!Validator.isBinary(this)) {
      if (nullOnError) return null;
      throw Exception("Only accepting binary value");
    }
    return TransformUtil.fromBinary(this, nullOnError: nullOnError);
  }

  /// Parse string to double type
  /// Example: 123456789
  String toSSN({bool nullOnError = false}) {
    if (Validator.isNumeric(this) && Validator.isLengthEqualTo(this, 9)) {
      return "${this.substring(0, 3)}-${this.substring(3, 5)}-${this.substring(5, 9)}";
    }
    if (nullOnError) return null;
    throw Exception("Only accepting SSN (Numeric String) value");
  }

  /// Capitalize each word inside string
  /// Example: your name => Your Name, your name => Your name
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
