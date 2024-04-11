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
    this.widht,
    this.title,
    this.borderRadiusGeometry,
  });

  final Color? backgroundColor;

  final double? height;

  final double? widht;

  final VoidCallback onPressed;

  final String? title;

  final BorderRadiusGeometry? borderRadiusGeometry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? context.dynamicHeight(0.07),
      width: widht ?? context.dynamicWidth(0.75),
      child: ElevatedButton(
        style: _CustomTheme(
          backgroundColor ?? ColorName.colorThickBlue,
          borderRadiusGeometry ?? ProjectRadius.small.borderRadius,
        ),
        onPressed: onPressed,
        child: _ButtonTitle(title: title),
      ),
    );
  }
}

final class _ButtonTitle extends StatelessWidget {
  const _ButtonTitle({
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? StringConstants.next,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: ColorName.colorMercury,
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
