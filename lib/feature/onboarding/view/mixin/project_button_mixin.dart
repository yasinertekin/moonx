part of '../onboarding_view.dart';

base mixin _ProjectButtonMixin on State<_OnboardingButton> {
  void handleOnboardingAction(
    OnBoardingEnum onboardingState,
    String birthDate,
    String birthTime,
    String placeOfBirth,
  ) {
    switch (onboardingState) {
      case OnBoardingEnum.welcome:
        context.read<OnboardingCubit>().nextPage();
      case OnBoardingEnum.birthDate:
        if (birthDate.isEmpty || birthTime.isEmpty) {
          context.showSnackBar(
            const SnackBar(
              content: Text(
                StringConstants.pleaseSelectBirthDateAndTime,
              ),
            ),
          );
          return;
        }
        context.read<OnboardingCubit>().nextPage();
      case OnBoardingEnum.birthPlace:
        if (placeOfBirth.isEmpty) return;
        Locator.appRouter.push(const HomeRoute());
    }
  }
}
