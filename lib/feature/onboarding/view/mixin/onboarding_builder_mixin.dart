part of '../onboarding_view.dart';

base mixin _OnboardingBuilderMixin on State<_OnboardingBuilder>
    implements TickerProvider {
  /// Onboarding Item Builder
  Widget onboardingItemBuilder(BuildContext context, int index) {
    switch (OnBoardingEnum.values[index]) {
      case OnBoardingEnum.welcome:
        return const _WelcomeView();
      case OnBoardingEnum.birthDate:
        return _BirthDateView(
          OnBoardingEnum.birthDate.onboarding,
        );
      case OnBoardingEnum.birthPlace:
        return _BirthPlaceView(
          OnBoardingEnum.birthPlace.onboarding,
        );
    }
  }

  @override
  void dispose() {
    context.read<OnboardingCubit>().dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<OnboardingCubit>()
          .initializeTabController(OnBoardingEnum.values.length, this),
    );
  }
}

/// Onboarding Enum
enum OnBoardingEnum {
  /// Welcome
  welcome,

  /// Birth Date
  birthDate,

  /// Birth Place
  birthPlace,
}

/// Onboarding Enum Extension
// ignore: library_private_types_in_public_api
extension OnBoardingEnumExtension on OnBoardingEnum {
  /// Get Onboarding
  Onboarding get onboarding {
    switch (this) {
      case OnBoardingEnum.welcome:
        return Onboarding(
          title: 'Welcome',
          description:
              // ignore: lines_longer_than_80_chars
              'Sed ut perspiciatis unde omnis iste natus\nerror sit voluptatem accusam.   Sed ut\nperspt perspiciatis unde omnis iste natus\nerror si.',
          image: Assets.images.imgWelcome.image(
            package: 'gen',
            fit: BoxFit.cover,
          ),
        );
      case OnBoardingEnum.birthDate:
        return Onboarding(
          description:
              'Sed ut perspiciatis unde omnis iste natus\nerror sit voluptatem accusam.   Sed ut\nperspt perspiciatis unde omnis iste natus\nerror si.',
          image: Assets.images.imgBirthDate.image(
            package: 'gen',
            fit: BoxFit.cover,
          ),
        );
      case OnBoardingEnum.birthPlace:
        return Onboarding(
          title: 'Where were you born?',
          description:
              'Sed ut perspiciatis unde omnis iste natus\nerror sit voluptatem accusam.   Sed ut\nperspt perspiciatis unde omnis iste natus\nerror si.',
          image: Assets.images.imgBirthPlace.image(
            package: 'gen',
            fit: BoxFit.cover,
          ),
        );
    }
  }
}
