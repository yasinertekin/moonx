import 'package:flutter/cupertino.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';

/// Done Button
final class DoneButton extends StatelessWidget {
  /// Constructor
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text(
        'Done',
        style: context.theme.textTheme.bodyLarge?.copyWith(
          color: CupertinoColors.activeBlue,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
