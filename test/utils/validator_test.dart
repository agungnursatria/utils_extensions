import 'package:flutter_test/flutter_test.dart';
import 'package:utils_extensions/utils/validator.dart';

void main() {
  group('Is Email', () {
    test('Simple', () {
      String simple = 'yourname@gmail.com';
      expect(isEmail(simple), true);
    });

    test('Average', () {
      String average = 'yourn1823.ame@gmail123.com';
      expect(isEmail(average), true);
    });

    test('Long enough', () {
      String long = 'long.enough.username@mysite.subdomain.hymail.com';
      expect(isEmail(long), true);
    });
  });
  group('Is Hexadecimal', () {
    test('3 digit', () {
      String a = '#1AB';
      expect(isHexadecimal(a), true);
    });

    test('6 digiT', () {
      String a = '#F8F123';
      expect(isHexadecimal(a), true);
    });
  });
}
