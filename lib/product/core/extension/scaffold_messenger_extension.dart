import 'package:flutter/material.dart';

/// ScaffoldMessengerExtension
extension ScaffoldMessengerExtension on BuildContext {
  /// Show SnackBar
  void showSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
