part of 'app_theme.dart';

/// Custom Theme
@immutable
final class CustomTheme implements AppTheme {
  @override
  ThemeData get themeData => ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
      );

  @override
  ColorScheme get colorScheme => ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.dark,
        secondary: ColorName.colorEmptiness,
        onPrimary: ColorName.colorDhusarGrey,
      );
}
