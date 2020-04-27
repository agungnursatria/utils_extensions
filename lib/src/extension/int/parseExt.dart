import 'package:utils_extensions/src/utils/transform_util.dart';
import 'package:utils_extensions/src/utils/validator_util.dart';

/// Num extension also works on int
extension IntParse on int {
  /// Transform int value to binary string
  String toBinary() => TransformUtil.toBinary(this);

  /// Transform int value to binary string
  int fromBinary({bool nullOnError = false}) {
    if (!ValidatorUtil.isBinary(this.toString())) {
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
    if (!ValidatorUtil.isNullOrBlank(ssn)) return ssn;
    if (nullOnError) return null;
    throw Exception("Only accepting SSN value");
  }

  /// Transform int value to ISBN (10/13)
  String toISBN({bool nullOnError = false}) {
    if (ValidatorUtil.isISBN(this.toString())) {
      if (ValidatorUtil.isLengthEqualTo(this, 13)) {
        String s = this.toString();
        return "ISBN-13: ${s.substring(0, 3)}-${s[3]}-${s.substring(4, 7)}-${s.substring(7, 12)}-${s[12]}";
      }
      if (ValidatorUtil.isLengthEqualTo(this, 10)) {
        String s = this.toString();
        return "ISBN-10: ${s[0]}-${s.substring(1, 4)}-${s.substring(4, 9)}-${s[9]}";
      }
    }

    if (nullOnError) return null;
    throw Exception("Length must be 10 or 13");
  }
}
