part of 'dialy_horoscope_cubit.dart';

final class DailyHoroscopeState extends Equatable {
  const DailyHoroscopeState({
    this.isLoading = false,
    this.errorMessage = '',
    this.promptResponse,
    this.status = GeminiStatus.initial,
  });
  final bool isLoading;

  final String errorMessage;

  final PromptResponse? promptResponse;

  final GeminiStatus status;

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

enum GeminiStatus {
  initial,
  loading,
  success,
  failure,
}
