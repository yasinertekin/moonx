part of 'lunar_tips_cubit.dart';

/// The state of the lunar tips
final class LunarTipsState extends Equatable {
  /// Constructor for [LunarTipsState]
  const LunarTipsState({
    required this.pageController,
    required this.error,
    this.lunarTipsStatus = LunarTipsStatus.loading,
    this.lunarTips = const <LunarTips>[],
  });

  /// The status of the lunar tips
  final LunarTipsStatus lunarTipsStatus;

  /// The list of lunar tips
  final List<LunarTips> lunarTips;

  /// The page controller for the lunar tips
  final PageController pageController;

  /// The error message
  final String error;
  @override
  List<Object> get props => <Object>[
        lunarTipsStatus,
        lunarTips,
        pageController,
        error,
      ];

  /// Returns a copy of the state with the provided fields
  LunarTipsState copyWith({
    LunarTipsStatus? lunarTipsStatus,
    List<LunarTips>? lunarTips,
    PageController? pageController,
    String? error,
  }) {
    return LunarTipsState(
      lunarTipsStatus: lunarTipsStatus ?? this.lunarTipsStatus,
      lunarTips: lunarTips ?? this.lunarTips,
      error: error ?? this.error,
      pageController: pageController ?? this.pageController,
    );
  }
}

/// The status of the lunar tips
enum LunarTipsStatus {
  /// The initial status
  success,

  /// The status when the lunar tips are loading
  failure,

  /// The status when the lunar tips are
  loading,
}
