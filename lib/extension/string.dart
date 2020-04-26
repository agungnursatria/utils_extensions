import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utils_extensions/utils/validator.dart' as Util;

extension StringValidator on String {
  /// Checks if data is null or empty.
  bool isNullOrEmpty() => Util.isNullOrEmpty(this);

  /// Checks if string is numeric.
  bool isNumeric() => Util.isNumeric(this);

  /// Checks if string is boolean.
  bool isBool() => Util.isBool(this);

  /// Checks if string is vector image.
  bool isVector() => Util.isVector(this);

  /// Checks if string is image.
  bool isImage() => Util.isImage(this);

  /// Checks if string is uri.
  bool isUri() => Util.isUri(this);

  /// Checks if string is email.
  bool isEmail({int minLength, int maxLength}) =>
      Util.isEmail(this) &&
      ((minLength != null)
          ? Util.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null) ? Util.isLengthLowerOrEqual(this, maxLength) : true);

  /// Checks if string is phone number.
  bool isPhoneNumber({int minLength, int maxLength}) =>
      Util.isPhoneNumber(this) &&
      ((minLength != null)
          ? Util.isLengthGreaterOrEqual(this, minLength)
          : true) &&
      ((maxLength != null) ? Util.isLengthLowerOrEqual(this, maxLength) : true);

  /// Checks if string is hexadecimal (example: Hexadecimal for color <#FFFFFF>).
  bool isHexadecimal() => Util.isHexadecimal(this);

  /// Checks if string is MD5
  bool isMD5() => Util.isMD5(this);

  /// Checks if string is SHA251.
  bool isSHA1() => Util.isSHA1(this);

  /// Checks if string is SHA256.
  bool isSHA256() => Util.isSHA256(this);

  /// Checks if string is ISBN (10/13) (example: ISBN 978-3-642-11746-6, ISBN-10 3-642-11746-5,  978-3-642-11746-6).
  bool isISBN() => Util.isISBN(this);

  /// Checks if string is binary (example: 656-12-1212, 123456789).
  bool isSSN() => Util.isSSN(this);

  /// Checks if string is Passport.
  bool isPassport() => Util.isPassport(this);

  /// Checks if string is Github Repository.
  bool isGithubRepo() => Util.isGithubRepo(this);

  /// Checks if string is binary (example: 01010101).
  bool isBinary() => Util.isBinary(this);

  /// Checks if string is Palindrom.
  bool isPalindrom() {
    bool isPalindrom = true;
    for (var i = 0; i < this.length; i++) {
      if (this[i] != this[this.length - i - 1]) isPalindrom = false;
    }
    return isPalindrom;
  }

  /// Checks if string is IPv4.
  bool isIPv4() => Util.isIPv4(this);

  /// Checks if string is IPv6.
  bool isIPv6() => Util.isIPv6(this);

  /// Checks if length of string is LOWER than maxLength.
  bool isLengthLowerThan(int maxLength) =>
      Util.isLengthLowerThan(this, maxLength);

  /// Checks if length of string is LOWER OR EQUAL to maxLength.
  bool isLengthLowerOrEqual(int maxLength) =>
      Util.isLengthLowerOrEqual(this, maxLength);

  /// Checks if length of string is GREATER than maxLength.
  bool isLengthGreaterThan(int maxLength) =>
      Util.isLengthGreaterThan(this, maxLength);

  /// Checks if length of string is GREATER OR EQUAL to maxLength.
  bool isLengthGreaterOrEqual(int maxLength) =>
      Util.isLengthGreaterOrEqual(this, maxLength);

  /// Checks if length of string is EQUAL than maxLength.
  bool isLengthEqualTo(int maxLength) => Util.isLengthEqualTo(this, maxLength);

  /// Checks if length of string is BETWEEN minLength to maxLength.
  bool isLengthBetween(int minLength, int maxLength) =>
      Util.isLengthBetween(this, minLength, maxLength);

  /// Checks if a contains b (Treating or interpreting upper- and lowercase letters as being the same).
  bool isContainsOnCaseInsensitive(String compareTo) =>
      Util.isContainsOnCaseInsensitive(this, compareTo);

  /// Checks if a contains b or b contains a (Treating or interpreting upper- and lowercase letters as being the same).
  bool isContainsAnyOnCaseInsensitive(String compareTo) =>
      Util.isContainsAnyOnCaseInsensitive(this, compareTo);
}

extension StringParsing on String {
  /// Parse string to int type
  int toInt({bool nullOnError = false}) =>
      nullOnError ? int.tryParse(this) : int.parse(this);

  /// Parse string to double type
  double toDouble({bool nullOnError = false}) =>
      nullOnError ? double.tryParse(this) : double.parse(this);

  /// Parse string to num type
  num toNum({bool nullOnError = false}) =>
      nullOnError ? num.tryParse(this) : num.parse(this);

  /// Parse binary string to int type
  /// Example: 0101001101
  int toIntFromBinary({bool nullOnError = false}) {
    if (!Util.isBinary(this)) {
      if (nullOnError) return null;
      throw "Only accepting binary value".toException();
    }
    return nullOnError
        ? int.tryParse(this, radix: 2)
        : int.parse(this, radix: 2);
  }

  /// Parse string to double type
  /// Example: 123456789
  String toSSN({bool nullOnError = false}) {
    if (this.isNumeric() && this.isLengthEqualTo(9)) {
      return "${this.substring(0, 3)}-${this.substring(3, 5)}-${this.substring(5, 9)}";
    }
    if (nullOnError) return null;
    throw "Only accepting SSN (Numeric String) value".toException();
  }
}

extension StringExceptionParsing on String {
  Exception toException() => Exception(this);
}

extension StringWidgetParsing on String {
  /// Transform string to Text Widget
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
  }) {
    return Text(
      this,
      key: key,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
    );
  }

  /// Transform string to Centered Text Widget
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
  }) {
    return Center(
      child: this.toText(
        key: key,
        style: style,
        strutStyle: strutStyle,
        textAlign: TextAlign.center,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
      ),
    );
  }

  /// Transform string to Image Widget with data from URL
  Image toImageNetwork({
    Key key,
    double scale,
    ImageFrameBuilder frameBuilder,
    ImageLoadingBuilder loadingBuilder,
    String semanticLabel,
    bool excludeFromSemantics,
    double width,
    double height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment,
    ImageRepeat repeat,
    Rect centerSlice,
    bool matchTextDirection,
    bool gaplessPlayback,
    filterQuality,
    Map<String, String> headers,
    int cacheWidth,
    int cacheHeight,
  }) =>
      Image.network(
        this,
        key: key,
        scale: scale,
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        width: width,
        height: height,
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        filterQuality: filterQuality,
        headers: headers,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      );

  /// Transform string to Image Widget with data from Assets
  Image toImageAssets({
    Key key,
    double scale,
    ImageFrameBuilder frameBuilder,
    String semanticLabel,
    bool excludeFromSemantics,
    double width,
    double height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment,
    ImageRepeat repeat,
    Rect centerSlice,
    bool matchTextDirection,
    bool gaplessPlayback,
    filterQuality,
    int cacheWidth,
    int cacheHeight,
    AssetBundle bundle,
    String package,
  }) =>
      Image.asset(
        this,
        key: key,
        scale: scale,
        frameBuilder: frameBuilder,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        width: width,
        height: height,
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        filterQuality: filterQuality,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
        bundle: bundle,
        package: package,
      );
}
