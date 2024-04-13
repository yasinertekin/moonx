import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class GeminiState extends Equatable {
  const GeminiState({
    this.isLoading = false,
    this.errorMessage = '',
    this.promptResponse,
    this.status = GeminiStatus.initial,
  });
  final bool isLoading;

  final String errorMessage;

  final PromptResponse? promptResponse;

  final GeminiStatus status;

  GeminiState copyWith({
    bool? isLoading,
    String? errorMessage,
    PromptResponse? promptResponse,
    GeminiStatus? status,
  }) {
    return GeminiState(
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
