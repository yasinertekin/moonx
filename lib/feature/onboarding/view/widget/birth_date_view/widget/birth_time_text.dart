part of '../../../onboarding_view.dart';

final class _BirtTimeText extends StatelessWidget {
  const _BirtTimeText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter Birth Time',
      style: context.theme.textTheme.bodyLarge
          ?.copyWith(color: context.theme.colorScheme.secondary),
      textAlign: TextAlign.center,
    );
  }
}
