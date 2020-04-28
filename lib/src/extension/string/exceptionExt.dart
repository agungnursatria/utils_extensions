extension StringExceptionParsing on String {
  Exception toException() => Exception(this);

  Exception toFormatException([dynamic source]) =>
      FormatException(this, source);
}
