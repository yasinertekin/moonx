part of 'inn_app_cubit.dart';

/// Represents the state of the in-app feature.
final class InAppState extends Equatable {
  /// Constructs an instance of [InAppState].
  ///
  /// [currentPrice] represents the current price of the in-app feature.
  /// [inAppList] represents the list of in-app features.
  const InAppState({
    required this.currentPrice,
    this.inAppList = const [],
  });

  /// The list of in-app features.
  final List<InApp> inAppList;

  /// The current price of the in-app feature.
  final InApp currentPrice;

  @override
  List<Object> get props => [inAppList, currentPrice];

  /// Creates a copy of this [InAppState] with the given parameters overridden.
  ///
  /// [inAppList] (optional) specifies the new list of in-app features.
  /// [currentPrice] (optional) specifies the new current
  ///  price of the in-app feature.
  InAppState copyWith({
    List<InApp>? inAppList,
    InApp? currentPrice,
  }) {
    return InAppState(
      inAppList: inAppList ?? this.inAppList,
      currentPrice: currentPrice ?? this.currentPrice,
    );
  }
}
