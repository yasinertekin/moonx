part of '../onboarding_view.dart';

final class _OnboardingButton extends StatefulWidget {
  const _OnboardingButton();

  @override
  State<_OnboardingButton> createState() => _OnboardingButtonState();
}

final class _OnboardingButtonState extends State<_OnboardingButton>
    with _ProjectButtonMixin {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<OnboardingCubit, OnboardingState, OnBoardingEnum>(
      selector: (onboardingState) => onboardingState.onBoardingEnum,
      builder: (context, onboardingState) {
        return Padding(
          padding: ProjectPadding.medium.paddingAll,
          child: BlocSelector<UsersBloc, UsersState, Users>(
            selector: (usersState) => usersState.users,
            builder: (context, usersState) {
              return ProjectButton(
                onPressed: () => handleOnboardingAction(
                  onboardingState,
                  usersState.birthDate,
                  usersState.birthTime,
                  usersState.placeOfBirth,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
