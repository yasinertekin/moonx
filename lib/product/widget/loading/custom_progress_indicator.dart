import 'package:flutter/material.dart';

/// A custom progress indicator widget.
///
/// This widget displays a circular progress indicator
///  at the center of the screen.
final class CustomProgressIndicator extends StatelessWidget {
  /// Constructs a [CustomProgressIndicator] object.
  const CustomProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
