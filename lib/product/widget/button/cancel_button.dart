import 'package:flutter/cupertino.dart';

/// Cancel Button
final class CancelButton extends StatelessWidget {
  /// Constructor
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Text(
        'Cancel',
        style: TextStyle(
          color: CupertinoColors.systemGrey,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
