part of '../../../onboarding_view.dart';

final class _BirthPlaceBackgroundImage extends StatelessWidget {
  const _BirthPlaceBackgroundImage(
    this.onboarding,
  );

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
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
