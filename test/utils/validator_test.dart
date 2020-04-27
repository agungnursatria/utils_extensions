import 'package:flutter_test/flutter_test.dart';
import 'package:utils_extensions/src/utils/validator_util.dart';

void main() {
  group('Is Email', () {
    test('Simple', () {
      String simple = 'yourname@gmail.com';
      expect(ValidatorUtil.isEmail(simple), true);
    });

    test('Average', () {
      String average = 'yourn1823.ame@gmail123.com';
      expect(ValidatorUtil.isEmail(average), true);
    });

    test('Long enough', () {
      String long = 'long.enough.username@mysite.subdomain.hymail.com';
      expect(ValidatorUtil.isEmail(long), true);
    });
  });
  group('Is Hexadecimal', () {
    test('3 digit', () {
      String a = '#1AB';
      expect(ValidatorUtil.isHexadecimal(a), true);
    });

    test('6 digiT', () {
      String a = '#F8F123';
      expect(ValidatorUtil.isHexadecimal(a), true);
    });
  });
}
