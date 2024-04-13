import 'package:flutter/widgets.dart';
import 'package:gen/gen.dart';

@immutable
final class AppEnvironment {
  AppEnvironment.general() {
    _instance = Env();
  }
  static late final AppConfiguration _instance;

  /// Initialize
  static AppConfiguration get instance => _instance;
}

/// AppEnvironmentItems
enum AppEnvironmentItems {
  /// geminiApiKey
  geminiApiKey,

  /// weatherApiKey
  weatherApiKey;

  /// value
  String get value {
    switch (this) {
      case AppEnvironmentItems.weatherApiKey:
        return AppEnvironment._instance.weatherApiKey;
      case AppEnvironmentItems.geminiApiKey:
        return AppEnvironment._instance.geminiApiKey;
    }
  }
}
