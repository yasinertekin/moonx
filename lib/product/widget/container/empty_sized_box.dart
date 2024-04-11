import 'package:flutter/material.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';

/// Empty SizedBox Default Height Dynamic 0.01 Width Dynamic 0.01
final class EmptySizedBox extends StatelessWidget {
  /// Empty SizedBox
  const EmptySizedBox({
    super.key,
    this.height,
    this.width,
  });

  /// Height
  final double? height;

  /// Width
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? context.dynamicHeight(0.01),
      width: width ?? context.dynamicWidth(0.01),
    );
  }
}
