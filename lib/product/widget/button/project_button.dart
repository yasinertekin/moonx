import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/constants/string_constants.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';

/// A custom button widget for projects.
final class ProjectButton extends StatelessWidget {
  /// Creates a [ProjectButton].
  ///
  /// The [onPressed] parameter is required and specifies the callback function
  /// to be called when the button is pressed.
  ///
  /// The [backgroundColor] parameter specifies
  /// the background color of the button.
  ///
  /// The [height] parameter specifies the height of the button.
  ///
  /// The [width] parameter specifies the width of the button.
  ///
  /// The [title] parameter specifies the title text of the button.
  ///
  /// The [titleColor] parameter specifies the color of the title text.
  ///
  /// The [borderRadiusGeometry] parameter specifies the border radius of
  /// the button.
  const ProjectButton({
    required this.onPressed,
    super.key,
    this.backgroundColor,
    this.height,
    this.width,
    this.title,
    this.titleColor,
    this.borderRadiusGeometry,
  });

  /// The background color of the button.
  final Color? backgroundColor;

  /// The height of the button.
  final double? height;

  /// The width of the button.
  final double? width;

  /// The callback function to be called when the button is pressed.
  final VoidCallback onPressed;

  /// The title text of the button.
  final String? title;

  /// The color of the title text.
  final Color? titleColor;

  /// The border radius of the button.
  final BorderRadiusGeometry? borderRadiusGeometry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? context.dynamicHeight(0.07),
      width: width ?? context.dynamicWidth(0.75),
      child: ElevatedButton(
        style: _CustomTheme(
          backgroundColor ?? ColorName.colorThickBlue,
          borderRadiusGeometry ?? ProjectRadius.small.borderRadius,
        ),
        onPressed: onPressed,
        child: _ButtonTitle(title: title, titleColor: titleColor),
      ),
    );
  }
}

final class _ButtonTitle extends StatelessWidget {
  const _ButtonTitle({
    required this.title,
    required this.titleColor,
  });

  final String? title;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        title ?? StringConstants.next,
        style: context.theme.textTheme.bodyLarge?.copyWith(
          color: titleColor ?? ColorName.colorMercury,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/// CustomTheme
final class _CustomTheme extends ButtonStyle {
  _CustomTheme(Color backgroundColor, BorderRadiusGeometry borderRadius)
      : super(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            backgroundColor,
          ),
        );
}
