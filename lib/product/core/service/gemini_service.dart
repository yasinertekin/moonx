import 'package:gen/gen.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:moonx/product/core/constants/string_constants.dart';
import 'package:moonx/product/core/enum/prompts.dart';
import 'package:moonx/product/core/initialize/config/app_environment.dart';

/// Interface for Gemini service
abstract interface class IGeminiService {
  IGeminiService(this.generativeModel);

  /// Generative model
  final GenerativeModel generativeModel;

  /// Generate daily horoscope
  Future<PromptResponse> generateDailyHoroscope(Users users);

  /// Get lunar tips
  Future<PromptResponse> getLunarTips(LunarTips lunarTips);
}

/// A service that provides daily horoscope for Gemini zodiac sign
final class GeminiServiceImpl implements IGeminiService {
  @override
  Future<PromptResponse> generateDailyHoroscope(
    Users users,
  ) async {
    final prompt = Prompt(
      Prompts.dailyHoroscope.getPromptValue(
        users.horoscope.value,
        '',
      ),
    );
    final content = [
      Content.text(
        prompt.prompt,
      ),
    ];

    final response = await generativeModel.generateContent(
      content,
    );

    return PromptResponse(
      response.text,
    );
  }

  @override
  Future<PromptResponse> getLunarTips(LunarTips lunarTips) async {
    final prompt = Prompt(
      Prompts.lunarTips.getPromptValue(
        '',
        lunarTips.title ?? '',
      ),
    );
    final content = [
      Content.text(
        prompt.prompt,
      ),
    ];

    final response = await generativeModel.generateContent(
      content,
    );
    return PromptResponse(
      response.text,
    );
  }

  @override
  GenerativeModel get generativeModel => GenerativeModel(
        model: StringConstants.geminiPro,
        generationConfig: GenerationConfig(),
        apiKey: AppEnvironmentItems.geminiApiKey.value,
      );
}
