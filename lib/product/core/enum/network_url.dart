import 'package:moonx/product/core/initialize/config/app_environment.dart';

/// Enum representing different network URLs.
enum NetworkUrl {
  /// Represents the weather API endpoint.
  weatherApiEndPoint,

  /// Represents the base URL for the API.
  baseUrl;

  /// Returns the value associated with the given [cityName].
  ///
  /// If the current instance is [NetworkUrl.weatherApiEndPoint],
  ///  it returns a URL
  /// for retrieving the current weather data for the specified city.
  /// The URL includes the weather API key and the city name.
  ///
  /// If the current instance is [NetworkUrl.baseUrl], it returns the base URL
  /// for the weather API.
  ///
  /// Throws an exception if the current instance is neither
  /// [NetworkUrl.weatherApiEndPoint]
  /// nor [NetworkUrl.baseUrl].
  String getValue(String cityName) {
    switch (this) {
      case NetworkUrl.weatherApiEndPoint:
        // ignore: lines_longer_than_80_chars
        return 'current.json?key=${AppEnvironmentItems.weatherApiKey.value}&q=$cityName&aqi=no';
      case NetworkUrl.baseUrl:
        return 'https://api.weatherapi.com/v1/';
    }
  }
}
