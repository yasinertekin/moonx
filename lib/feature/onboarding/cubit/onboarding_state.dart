part of 'onboarding_cubit.dart';

/// Onboarding State
final class OnboardingState extends Equatable {
  /// Constructor
  const OnboardingState({
    this.tabController,
    this.onBoardingEnum = OnBoardingEnum.welcome,
    this.pageController,
    this.isLoaded = false,
    this.error = '',
  });

  /// Tab Controller
  final TabController? tabController;

  /// Page Controller
  final PageController? pageController;

  /// OnBoarding Enum
  final OnBoardingEnum onBoardingEnum;

  /// Is Loaded
  final bool isLoaded;

  /// Error
  final String error;

  @override
  List<Object?> get props =>
      [tabController, onBoardingEnum, isLoaded, pageController, error];

  /// Copy With
  OnboardingState copyWith({
    TabController? tabController,
    OnBoardingEnum? onBoardingEnum,
    bool? isLoaded,
    PageController? pageController,
    String? error,
  }) {
    return OnboardingState(
      tabController: tabController ?? tabController,
      onBoardingEnum: onBoardingEnum ?? this.onBoardingEnum,
      isLoaded: isLoaded ?? this.isLoaded,
      pageController: pageController ?? this.pageController,
      error: error ?? this.error,
    );
  }
}
