part of '../../../onboarding_view.dart';

final class _EnterBirthDateText extends StatelessWidget {
  const _EnterBirthDateText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter Birth Date',
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: context.theme.colorScheme.secondary,
      ),
    );
  }
}
