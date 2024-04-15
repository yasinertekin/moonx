part of 'home_header_cubit.dart';

/// Represents the state of the home header.
final class HomeHeaderState extends Equatable {
  /// Constructs a [HomeHeaderState] with the given [index]
  /// and [pageController].
  const HomeHeaderState({required this.index, required this.pageController});

  /// The index of the home header.
  final HomeHeader index;

  /// The page controller for the home header.
  final PageController pageController;

  @override
  List<Object> get props => [index, pageController];

  /// Creates a copy of this [HomeHeaderState] with the given parameters.
  HomeHeaderState copyWith({
    HomeHeader? index,
    PageController? pageController,
  }) {
    return HomeHeaderState(
      index: index ?? this.index,
      pageController: pageController ?? this.pageController,
    );
  }
}
