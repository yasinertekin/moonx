import 'package:flutter/material.dart';
import 'package:gen/src/asset/assets.gen.dart';

@immutable
final class HourlyWeatherForecast {
  final String time;

  final Image icon;

  const HourlyWeatherForecast({
    required this.time,
    required this.icon,
  });

  /// HourlyWeatherForecast List 2
  static List<HourlyWeatherForecast> hourlyWeatherForecastList = [
    HourlyWeatherForecast(
        time: '04.34',
        icon: Assets.images.imgSmallMoonDown.image(
          package: 'gen',
          height: 22,
        )),
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
