import 'package:dio/dio.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/initialize/config/app_environment.dart';

abstract final class IWeatherService {
  IWeatherService({required this.service});
  Future<Weather> fetchWeather(String cityName);
  final Dio service;
}

final class WeatherServiceImpl extends IWeatherService {
  WeatherServiceImpl({required super.service});
  @override
  Future<Weather> fetchWeather(String cityName) async {
    final response = await service.get<Map<String, dynamic>>(
      'current.json?key=${AppEnvironmentItems.weatherApiKey.value}&q=$cityName&aqi=no',
    );
    if (response.statusCode == 200) {
      return Weather.fromJson(response.data!);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
