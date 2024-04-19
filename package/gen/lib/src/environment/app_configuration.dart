/// An abstract class representing the configuration for the application.
abstract class AppConfiguration {
  /// The API key used for accessing weather data.
  String get weatherApiKey;

  /// The API key used for accessing Gemini data.
  String get geminiApiKey;
}
