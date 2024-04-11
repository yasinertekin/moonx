import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

part 'custom_theme.dart';

/// App Theme
@immutable
abstract interface class AppTheme {
  const AppTheme._();

  /// Theme Data
  ThemeData get themeData;

  /// Color Scheme
  ColorScheme get colorScheme;
}
