import 'dart:convert';

extension MapParsing on Map {
  // Transform map to json
  String toJsonString() => jsonEncode(this);
}
