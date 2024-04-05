part of '../onboarding_view.dart';

base mixin _OnboardingBuilderMixin on State<_OnboardingBuilder>
    implements TickerProvider {
  /// Onboarding Item Builder
  Widget onboardingItemBuilder(BuildContext context, int index) {
    switch (OnBoardingEnum.values[index]) {
      case OnBoardingEnum.welcome:
        return const _WelcomeView();
      case OnBoardingEnum.birthDate:
        return const _BirthDateView();
      case OnBoardingEnum.birthPlace:
        return const _BirthPlaceView();
    }
  }

  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: OnBoardingEnum.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
          title: 'Welcome to our store',
          description:
              'We are here to help you find the best products for your needs',
          image: Assets.images.imgWelcome.image(
            package: 'gen',
            fit: BoxFit.cover,
          ),
        );
      case OnBoardingEnum.birthDate:
        return Onboarding(
          description:
              'We have a wide range of products for you to choose from',
          image: Assets.images.imgWelcome.image(
            package: 'gen',
            fit: BoxFit.cover,
          ),
        );
      case OnBoardingEnum.birthPlace:
        return Onboarding(
          title: 'Get the best deals',
          description:
              'We offer the best deals for our customers. Check out now!',
          image: Assets.images.imgWelcome.image(
            package: 'gen',
            fit: BoxFit.cover,
          ),
        );
    }
  }
}
