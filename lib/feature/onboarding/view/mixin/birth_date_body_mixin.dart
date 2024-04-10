part of '../onboarding_view.dart';

/// Custom Cupertino Model
base mixin _SelectBirthDateButtonMixin on State<_SelectBirthDateButton> {
  final _formattedDate = DateFormat('yyyy/MM/dd').format(DateTime.now());

  /// Show Custom Cupertino Modal
  void showCustomCupertinoModal(BuildContext context) {}
}
