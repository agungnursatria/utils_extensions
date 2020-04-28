class EnumUtil {
  /// Return string value of enum
  static String enumValue(Object o) => o.toString().split('.').last;
}
