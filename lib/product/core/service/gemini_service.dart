import 'package:gen/gen.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:moonx/product/core/initialize/config/app_environment.dart';

abstract interface class IGeminiService {
  IGeminiService(this.generativeModel);
  final GenerativeModel generativeModel;

  Future<PromptResponse> generateDailyHoroscope(Users users);

  // Future<LunarTips> getLunarTips();
}

/// A service that provides daily horoscope for Gemini zodiac sign
final class GeminiServiceImpl implements IGeminiService {
  @override
  Future<PromptResponse> generateDailyHoroscope(
    Users users,
  ) async {
    final prompt = Prompt(
      'What is my daily horoscope? ${users.horoscope.value}  ',
    );
    final content = [Content.text(prompt.prompt)];

    final response = await generativeModel.generateContent(content);

    return PromptResponse(
      response.text,
    );
  }

  @override
  GenerativeModel get generativeModel => GenerativeModel(
        model: 'gemini-pro',
        apiKey: AppEnvironmentItems.geminiApiKey.value,
      );
}
