import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/constants/string_constants.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';

final class ProjectButton extends StatelessWidget {
  const ProjectButton({
    required this.onPressed,
    super.key,
    this.backgroundColor,
    this.height,
    this.width,
    this.title,
    this.borderRadiusGeometry,
    this.titleColor,
  });

  final Color? backgroundColor;

  final double? height;

  final double? width;

  final VoidCallback onPressed;

  final String? title;

  final Color? titleColor;

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
