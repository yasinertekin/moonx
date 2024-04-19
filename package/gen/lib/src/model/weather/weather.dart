import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:gen/src/model/weather/current.dart';
import 'package:gen/src/model/weather/weather_location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

/// Represents the weather information.
@JsonSerializable()
@immutable
final class Weather with EquatableMixin {
  /// Constructs a [Weather] instance.
  ///
  /// [location] represents the location information.
  /// [current] represents the current weather information.
  Weather({
    this.location,
    this.current,
  });

  /// Constructs a [Weather] instance from a JSON map.
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  /// Represents the location information.
  @JsonKey(name: 'location')
  final WeatherLocation? location;

  /// Represents the current weather information.
  @JsonKey(name: 'current')
  final Current? current;

  /// Converts the [Weather] instance to a JSON map.
  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  @override
  List<Object?> get props => [location, current];
}
