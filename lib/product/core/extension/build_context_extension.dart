import 'package:flutter/material.dart';

/// Build Context Extension
extension BuildContextExtension on BuildContext {
  /// MediaQuery size of
  double get height => MediaQuery.sizeOf(this).height;

  /// MediaQuery size of
  double get width => MediaQuery.sizeOf(this).width;

  /// Dynamic height
  double dynamicHeight(double value) => height * value;

  /// Dynamic width
  double dynamicWidth(double value) => width * value;
}

/// Theme Extension
extension ThemeExtension on BuildContext {
  /// Theme
  ThemeData get theme => Theme.of(this);
}
