import 'package:flutter_test/flutter_test.dart';
import 'package:utils_extensions/utils/validator.dart';

void main() {
  group('Is Email', () {
    test('Simple', () {
      String simple = 'yourname@gmail.com';
      expect(Validator.isEmail(simple), true);
    });

    test('Average', () {
      String average = 'yourn1823.ame@gmail123.com';
      expect(Validator.isEmail(average), true);
    });

    test('Long enough', () {
      String long = 'long.enough.username@mysite.subdomain.hymail.com';
      expect(Validator.isEmail(long), true);
    });
  });
  group('Is Hexadecimal', () {
    test('3 digit', () {
      String a = '#1AB';
      expect(Validator.isHexadecimal(a), true);
    });

    test('6 digiT', () {
      String a = '#F8F123';
      expect(Validator.isHexadecimal(a), true);
    });
  });
}
