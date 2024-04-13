part of '../../../onboarding_view.dart';

final class _BirthDateViewBackgroundImage extends StatelessWidget {
  const _BirthDateViewBackgroundImage({
    required this.onboarding,
  });

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.3),
          BlendMode.darken,
        ),
        child: onboarding.image,
      ),
    );
  }
}
