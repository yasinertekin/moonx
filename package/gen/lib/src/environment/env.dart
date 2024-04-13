import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'env.g.dart';

@Envied(path: 'assets/env/.env', obfuscate: true)
final class Env implements AppConfiguration {
  @EnviedField(varName: 'WEATHER_API_KEY')
  static final String _weatherApiKey = _Env._weatherApiKey;

  @EnviedField(varName: 'GEMINI_API_KEY')
  static final String _geminiApiKey = _Env._geminiApiKey;

  @override
  String get weatherApiKey => _weatherApiKey;

  @override
  String get geminiApiKey => _geminiApiKey;
}
