part of 'daily_horoscope_cubit.dart';

/// Represents the state of the daily horoscope feature.
final class DailyHoroscopeState extends Equatable {
  /// Constructs a [DailyHoroscopeState] instance.
  const DailyHoroscopeState({
    this.isLoading = false,
    this.errorMessage = '',
    this.promptResponse,
    this.status = GeminiStatus.initial,
  });

  /// Indicates whether the daily horoscope is currently being loaded.
  final bool isLoading;

  /// The error message associated with the daily horoscope.
  final String errorMessage;

  /// The response from the prompt associated with the daily horoscope.
  final PromptResponse? promptResponse;

  /// The status of the daily horoscope.
  final GeminiStatus status;

  /// Creates a copy of
  ///  this [DailyHoroscopeState] instance with the given parameters overridden.
  DailyHoroscopeState copyWith({
    bool? isLoading,
    String? errorMessage,
    PromptResponse? promptResponse,
    GeminiStatus? status,
  }) {
    return DailyHoroscopeState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      promptResponse: promptResponse ?? this.promptResponse,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [isLoading, errorMessage, promptResponse, status];
}

/// Represents the status of the daily horoscope.
/// Enum representing the status of a Gemini horoscope.
enum GeminiStatus {
  /// The initial status before any data is loaded.
  initial,

  /// The status when data is being loaded.
  loading,

  /// The status when data is successfully loaded.
  success,

  /// The status when there is a failure in loading data.
  failure,
}
