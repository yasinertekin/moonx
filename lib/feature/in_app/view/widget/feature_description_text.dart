part of '../inn_app_view.dart';

final class _FeatureDescriptionText extends StatelessWidget {
  const _FeatureDescriptionText();

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      // ignore: lines_longer_than_80_chars
      'Experience a virtual presence like never before, crafted just for you'
      'despite the computational demands, we offer this innovative'
      'solution at an affordable price.',
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: ColorName.colorBrilliance,
        fontSize: 14,
      ),
    );
  }
}
