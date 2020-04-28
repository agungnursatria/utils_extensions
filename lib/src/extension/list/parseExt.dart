import 'dart:convert';

extension ListParse on List {
  /// Transform list to json
  String toJsonString() => jsonEncode(this);

  /// Get total value of list of num (int/double)
  /// Example: [1,2,3,4] => 10
  num valueTotal() {
    num total = 0;
    if (this == null || this.isEmpty) return total;
    if (this[0] is num) for (var v in this) total += v;
    throw FormatException('Can only accepting list of num (int/double)');
  }
}
