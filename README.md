# UtilsExtension

Flutter commonly used utility/helper with implanted function inside data types (Extension), like kotlin & swift extension.

## Getting Started

In your flutter project add the dependency:

```yml
dependencies:
  ...
  utils_extensions: ^0.1.1
```

#### Importing package
```dart
import 'package:utils_extensions/utils_extensions.dart';
```

## Utils & Extension Contents

### Extension - String
```dart
// Validator
bool isNull();
bool isNullOrBlank();
bool isNum(String s); // True if string is num (int or double)
bool isNumericOnly(String s); // True if string is only have numeric value 
bool isAlphabetOnly(String s);
bool isBool();
bool isVector();
bool isImage(); 
bool isAudio(); 
bool isVideo(); 
bool isTxt(); 
bool isDocument(); 
bool isExcel();
bool isPPT(); 
bool isApk(); 
bool isPDF(); 
bool isHTML();
bool isURL();
bool isDateTime();
bool isEmail({int minLength, int maxLength});
bool isPhoneNumber({int minLength, int maxLength});
bool isHexadecimal();
bool isMD5();
bool isSHA1();
bool isSHA256();
bool isISBN();
bool isSSN();
bool isPassport();
bool isGithubRepo();
bool isBinary();
bool isPalindrom();
bool isOneAKind();
bool isCurrency();
bool isIPv4();
bool isIPv6();
bool isLengthLowerThan(int maxLength);
bool isLengthLowerOrEqual(int maxLength);
bool isLengthGreaterThan(int maxLength);
bool isLengthGreaterOrEqual(int maxLength);
bool isLengthEqualTo(int maxLength);
bool isLengthBetween(int minLength, int maxLength);
bool isCaseInsensitiveContains(String compareTo);
bool isCaseInsensitiveContainsAny(String compareTo);
bool isCamelCase();
bool isCapitalize({bool firstOnly = false});

// Exception
Exception toException();
Exception toFormatException([dynamic source]);

// Parser
int toInt({bool nullOnError = false});
double toDouble({bool nullOnError = false});
num toNum({bool nullOnError = false});
bool toBool({bool falseOnError = false});
DateTime toDateTime();
String toBinary({bool nullOnError = false});
int toIntFromBinary({bool nullOnError = false});
String toSSN({bool nullOnError = false});
String toCapitalize({bool firstOnly = false});
String toCamelCase();
String toNumericOnly();

// Widget
Text toText({
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
  });
Center toTextCentered({
  Key key,
  TextStyle style,
  StrutStyle strutStyle,
  TextDirection textDirection,
  Locale locale,
  bool softWrap,
  TextOverflow overflow,
  double textScaleFactor,
  int maxLines,
  String semanticsLabel,
  TextWidthBasis textWidthBasis,
});
```

### Extension - num

**this extension can also be used from int and double data types**

```dart
// Validator
bool isNull();
bool isNullOrBlank();
bool isLowerThan(num compareTo);
bool isGreaterThan(num compareTo);
bool isEqualTo(num compareTo);
bool isPhoneNumber({int minLength, int maxLength});
bool isLengthLowerThan(int maxLength);
bool isLengthLowerOrEqual(int maxLength);
bool isLengthGreaterThan(int maxLength);
bool isLengthGreaterOrEqual(int maxLength);
bool isLengthEqualTo(int maxLength);
bool isLengthBetween(int maxLength);

// Widget
Text toText({
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
  });
Center toTextCentered({
  Key key,
  TextStyle style,
  StrutStyle strutStyle,
  TextDirection textDirection,
  Locale locale,
  bool softWrap,
  TextOverflow overflow,
  double textScaleFactor,
  int maxLines,
  String semanticsLabel,
  TextWidthBasis textWidthBasis,
});
```

### Extension - int

**int data type can also use extension from num**

```dart
// Validator
bool isPalindrom();
bool isBinary();
bool isOneAKind();

// Parse
String toBinary();
String toBinaryInt();
String fromBinary();
DateTime toDateTime({bool isMicroSeconds});
String toSSN({bool nullOnError = false});
String toISBN({bool nullOnError = false});
```

### Extension - List

```dart
// Validator
bool isNull();
bool isNullOrBlank();
bool isBinary();
bool isOneAKind();
bool isLengthLowerThan(int maxLength);
bool isLengthLowerOrEqual(int maxLength);
bool isLengthGreaterThan(int maxLength);
bool isLengthGreaterOrEqual(int maxLength);
bool isLengthEqualTo(int maxLength);
bool isLengthBetween(int maxLength);

// Parse
String toJsonString();
num valueTotal(); // Only accepting num, int, double data type
```

### Extension - Map

```dart
// Validator
bool isNull();
bool isNullOrBlank();
bool isBinary();
bool isOneAKind();
bool isLengthLowerThan(int maxLength);
bool isLengthLowerOrEqual(int maxLength);
bool isLengthGreaterThan(int maxLength);
bool isLengthGreaterOrEqual(int maxLength);
bool isLengthEqualTo(int maxLength);
bool isLengthBetween(int maxLength);

// Parse
String toJsonString();
```

### Extension - Set

```dart
// Validator
bool isNull();
bool isNullOrBlank();
bool isBinary();
bool isOneAKind();
bool isLengthLowerThan(int maxLength);
bool isLengthLowerOrEqual(int maxLength);
bool isLengthGreaterThan(int maxLength);
bool isLengthGreaterOrEqual(int maxLength);
bool isLengthEqualTo(int maxLength);
bool isLengthBetween(int maxLength);

// Parse
String toJsonString();
num valueTotal(); // Only accepting num, int, double data type
```

### Utils - enum_util
```dart
String enumValue(Object o); // Return string value of enum
```

### Utils - TransformUtil

```dart
String toBinary(int i);
String toBinaryInt(int i);
int fromBinary(String binaryStr);
String capitalize(String s, {bool firstOnly = false});
String capitalizeFirst(String s); // Capitalize only the first word
String removeAllWhitespace(String s);
String camelCase(String s);
String numericOnly(String s, {bool firstWordOnly = false});
String toSSN(String s);
```

### Utils - ValidatorUtil
```dart
bool isNull(dynamic s);
bool isNullOrBlank(dynamic s);
bool isNum(String s); // True if string is num (int or double)
bool isNumericOnly(String s); // True if string is only have numeric value 
bool isAlphabetOnly(String s);
bool isBool(String s);
bool isVector(String s);
bool isImage(String s); 
bool isAudio(String s); 
bool isVideo(String s); 
bool isTxt(String s); 
bool isDocument(String s); 
bool isExcel(String s);
bool isPPT(String s); 
bool isApk(String s); 
bool isPDF(String s); 
bool isHTML(String s);
bool isURL(String s);
bool isDateTime(String s);
bool isEmail({int minLength, int maxLength});
bool isPhoneNumber({int minLength, int maxLength});
bool isHexadecimal(String s);
bool isMD5(String s);
bool isSHA1(String s);
bool isSHA256(String s);
bool isISBN(String s);
bool isSSN(String s);
bool isPassport(String s);
bool isGithubRepo(String s);
bool isBinary(String s);
bool isPalindrom(String s);
bool isOneAKind(dynamic s);
bool isCurrency(String s);
bool isIPv4(String s);
bool isIPv6(String s);
bool isLengthLowerThan(int maxLength);
bool isLengthLowerOrEqual(int maxLength);
bool isLengthGreaterThan(int maxLength);
bool isLengthGreaterOrEqual(int maxLength);
bool isLengthEqualTo(int maxLength);
bool isLengthBetween(int minLength, int maxLength);
bool isCaseInsensitiveContains(String compareTo);
bool isCaseInsensitiveContainsAny(String compareTo);
bool isLowerThan(num compareTo);
bool isGreaterThan(num compareTo);
bool isEqualTo(num compareTo);
bool isCamelCase(String s);
bool isCapitalize(String s, {bool firstOnly = false});
```