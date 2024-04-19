import 'package:flutter/material.dart';
import 'package:gen/src/asset/assets.gen.dart';

/// Represents the hourly weather forecast.
@immutable
final class HourlyWeatherForecast {
  /// Constructs a [HourlyWeatherForecast] instance.
  const HourlyWeatherForecast({
    required this.time,
    required this.icon,
  });

  /// The time of the forecast.
  final String time;

  /// The icon representing the weather condition.
  final Image icon;

  /// A list of hourly weather forecasts.
  static List<HourlyWeatherForecast> hourlyWeatherForecastList = [
    HourlyWeatherForecast(
      time: '04.34',
      icon: Assets.images.imgSmallMoonDown.image(
        package: 'gen',
        height: 22,
      ),
    ),
    HourlyWeatherForecast(
      time: '16.39',
      icon: Assets.images.imgSmallMoonUp.image(
        package: 'gen',
        height: 22,
      ),
    ),
    HourlyWeatherForecast(
      time: '06.01',
      icon: Assets.images.imgSmallSunDown.image(
        package: 'gen',
        height: 22,
      ),
    ),
    HourlyWeatherForecast(
      time: '20.02',
      icon: Assets.images.imgSmallSunUp.image(
        package: 'gen',
        height: 22,
      ),
    ),
  ];
}
