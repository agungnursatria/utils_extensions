import 'package:utils_extensions/utils/transform.dart';
import 'package:utils_extensions/utils/validator.dart';

/// Num extension also works on int
extension IntParse on int {
  /// Transform int value to binary string
  String toBinary() => TransformUtil.toBinary(this);

  /// Transform int value to binary string
  int fromBinary({bool nullOnError = false}) {
    if (!Validator.isBinary(this.toString())) {
      if (nullOnError) return null;
      throw Exception("Only accepting binary value");
    }
    return TransformUtil.fromBinary(this.toString());
  }

  /// Transform int millisecondsSinceEpoch (DateTime) to DateTime
  DateTime toDateTime() => DateTime.fromMillisecondsSinceEpoch(this);

  /// Transform int to SSN (Social Security Number)
  /// Example: 123456789
  String toSSN({bool nullOnError = false}) {
    String ssn = TransformUtil.toSSN(this.toString());
    if (!Validator.isNullOrBlank(ssn)) return ssn;
    if (nullOnError) return null;
    throw Exception("Only accepting SSN value");
  }

  /// Transform int value to ISBN (10/13)
  String toISBN({bool nullOnError = false}) {
    if (Validator.isISBN(this.toString())) {
      if (Validator.isLengthEqualTo(this, 13)) {
        String s = this.toString();
        return "ISBN-13: ${s.substring(0, 3)}-${s[3]}-${s.substring(4, 7)}-${s.substring(7, 12)}-${s[12]}";
      }
      if (Validator.isLengthEqualTo(this, 10)) {
        String s = this.toString();
        return "ISBN-10: ${s[0]}-${s.substring(1, 4)}-${s.substring(4, 9)}-${s[9]}";
      }
    }

    if (nullOnError) return null;
    throw Exception("Length must be 10 or 13");
  }
}
