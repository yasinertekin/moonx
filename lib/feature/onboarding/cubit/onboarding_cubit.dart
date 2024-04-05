import 'package:bloc/bloc.dart';
import 'package:moonx/feature/onboarding/view/onboarding_view.dart';

/// Onboarding Cubit
final class OnboardingCubit extends Cubit<OnBoardingEnum> {
  /// Constructor
  OnboardingCubit() : super(OnBoardingEnum.welcome);

  /// Next
  void next() {
    if (state == OnBoardingEnum.birthPlace) {
      return;
    }
    emit(OnBoardingEnum.values[state.index + 1]);
  }

  /// Previous
  void previous() {
    if (state == OnBoardingEnum.welcome) {
      return;
    }
    emit(OnBoardingEnum.values[state.index - 1]);
  }

  /// Finish
  void finish() {
    emit(OnBoardingEnum.birthPlace);
  }
}
