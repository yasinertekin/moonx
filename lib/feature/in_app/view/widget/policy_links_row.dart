part of '../inn_app_view.dart';

final class _PolicyLinksRow extends StatelessWidget {
  const _PolicyLinksRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Privacy Policy',
          style: context.theme.textTheme.bodyLarge?.copyWith(
            color: ColorName.colorBrilliance,
            decoration: TextDecoration.underline,
            fontSize: 12,
          ),
        ),
        Text(
          'Restore Purchase',
          style: context.theme.textTheme.bodyLarge?.copyWith(
            color: ColorName.colorBrilliance,
            decoration: TextDecoration.underline,
            fontSize: 12,
          ),
        ),
        Text(
          'Terms of Service',
          style: context.theme.textTheme.bodyLarge?.copyWith(
            color: ColorName.colorBrilliance,
            decoration: TextDecoration.underline,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
