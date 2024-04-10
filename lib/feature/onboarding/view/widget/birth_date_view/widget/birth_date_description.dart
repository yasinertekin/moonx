part of '../../../onboarding_view.dart';

final class _BirthDateDescription extends StatelessWidget {
  const _BirthDateDescription(
    this.description,
  );

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: context.theme.colorScheme.onPrimary,
      ),
      textAlign: TextAlign.center,
    );
  }
}
