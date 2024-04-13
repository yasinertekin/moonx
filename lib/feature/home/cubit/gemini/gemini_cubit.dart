import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/home/cubit/gemini/gemini_state.dart';
import 'package:moonx/product/core/service/gemini_service.dart';

/// Cubit for Gemini zodiac sign
final class GeminiCubit extends Cubit<GeminiState> {
  /// Constructor
  GeminiCubit(
    this._geminiService,
  ) : super(const GeminiState());

  /// Gemini service
  final IGeminiService _geminiService;

  /// Generate daily horoscope
  Future<void> generateDailyHoroscope({
    required Users users,
  }) async {
    emit(state.copyWith(isLoading: true, status: GeminiStatus.loading));

    try {
      final response = await _geminiService.generateDailyHoroscope(users);
      emit(
        state.copyWith(
          promptResponse: response,
          status: GeminiStatus.success,
        ),
      );
    } on Exception catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: GeminiStatus.failure,
        ),
      );
    }
  }
}
