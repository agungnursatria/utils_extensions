import 'package:flutter/material.dart';

extension NumWidgetParsing on num {
  /// Transform num value to Text Widget
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
      this.toString(),
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

  /// Transform num value to Centered Text Widget
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

  /// Transform num value to Image Widget with data from URL
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
        this.toString(),
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
}
