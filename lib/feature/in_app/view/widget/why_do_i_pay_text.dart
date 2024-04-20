part of '../inn_app_view.dart';

final class _WhyDoIPayText extends StatelessWidget {
  const _WhyDoIPayText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Why do I need to pay?',
      style: context.theme.textTheme.titleLarge?.copyWith(
        color: ColorName.colorBrilliance,
        fontSize: 16,
      ),
    );
  }
}
