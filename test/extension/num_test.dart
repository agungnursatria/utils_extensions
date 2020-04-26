import 'package:flutter_test/flutter_test.dart';
import 'package:utils_extensions/utils_extensions.dart';

void main() {
  group('Lower than', () {
    test('Num lower than', () {
      num a = 15;
      num b = 16;
      expect(a.isLowerThan(b), true);
    });

    test('Num (int) lower than', () {
      int a = 15;
      int b = 16;
      expect(a.isLowerThan(b), true);
    });

    test('Num (double) lower than', () {
      double a = 15;
      double b = 16;
      expect(a.isLowerThan(b), true);
    });
  });

  group('Greater than', () {
    test('Num greater than', () {
      num a = 15;
      num b = 14;
      expect(a.isGreaterThan(b), true);
    });

    test('Num (int) greater than', () {
      int a = 15;
      int b = 14;
      expect(a.isGreaterThan(b), true);
    });

    test('Num (double) greater than', () {
      double a = 15;
      double b = 14;
      expect(a.isGreaterThan(b), true);
    });
  });

  group('Equal to', () {
    test('Num equal to', () {
      num a = 15;
      num b = 15;
      expect(a.isEqualTo(b), true);
    });

    test('Num (int) equal to', () {
      int a = 15;
      int b = 15;
      expect(a.isEqualTo(b), true);
    });

    test('Num (double) equal to', () {
      double a = 15;
      double b = 15;
      expect(a.isEqualTo(b), true);
    });
  });
}
