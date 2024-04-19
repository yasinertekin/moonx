import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/enum/network_url.dart';

/// An abstract class representing a weather service.
abstract final class IWeatherService {
  /// Constructs a [IWeatherService] instance with the given [service].
  IWeatherService({required this.service});

  /// Fetches the weather for the given [cityName].
  ///
  /// Returns a [Future] that completes with a [Weather] object.
  Future<Weather> fetchWeather(String cityName);

  /// The Dio service used for making HTTP requests.
  final Dio service;
}

/// Implementation of the [IWeatherService] interface.
final class WeatherServiceImpl extends IWeatherService {
  /// Constructs a [WeatherServiceImpl] instance with the given [service].
  WeatherServiceImpl({required super.service});

  /// Fetches the weather for the given [cityName].
  ///
  /// Returns a [Future] that completes with a [Weather] object.
  /// Throws an [Exception] if the weather data fails to load.
  @override
  Future<Weather> fetchWeather(String cityName) async {
    final response = await service.get<Map<String, dynamic>>(
      NetworkUrl.weatherApiEndPoint.getValue(cityName),
    );
    if (response.statusCode == HttpStatus.ok) {
      return Weather.fromJson(response.data!);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
