import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:gen/src/model/weather/condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current.g.dart';

/// Represents the current weather conditions.
@JsonSerializable()
@immutable
final class Current with EquatableMixin {
  /// Creates a new instance of [Current].
  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  /// Creates a new instance of [Current] from a JSON map.
  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  /// The epoch time when the weather was last updated.
  @JsonKey(name: 'last_updated_epoch')
  final double? lastUpdatedEpoch;

  /// The time when the weather was last updated.
  @JsonKey(name: 'last_updated')
  final String? lastUpdated;

  /// The temperature in Celsius.
  @JsonKey(name: 'temp_c')
  final double? tempC;

  /// The temperature in Fahrenheit.
  @JsonKey(name: 'temp_f')
  final double? tempF;

  /// Indicates whether it is day or night.
  @JsonKey(name: 'is_day')
  final double? isDay;

  /// The condition of the weather.
  @JsonKey(name: 'condition')
  final Condition? condition;

  /// The wind speed in miles per hour.
  @JsonKey(name: 'wind_mph')
  final double? windMph;

  /// The wind speed in kilometers per hour.
  @JsonKey(name: 'wind_kph')
  final double? windKph;

  /// The wind direction in degrees.
  @JsonKey(name: 'wind_degree')
  final double? windDegree;

  /// The wind direction.
  @JsonKey(name: 'wind_dir')
  final String? windDir;

  /// The pressure in millibars.
  @JsonKey(name: 'pressure_mb')
  final double? pressureMb;

  /// The pressure in inches.
  @JsonKey(name: 'pressure_in')
  final double? pressureIn;

  /// The precipitation in millimeters.
  @JsonKey(name: 'precip_mm')
  final double? precipMm;

  /// The precipitation in inches.
  @JsonKey(name: 'precip_in')
  final double? precipIn;

  /// The humidity percentage.
  @JsonKey(name: 'humidity')
  final double? humidity;

  /// The cloud coverage percentage.
  @JsonKey(name: 'cloud')
  final double? cloud;

  /// The "feels like" temperature in Celsius.
  @JsonKey(name: 'feelslike_c')
  final double? feelslikeC;

  /// The "feels like" temperature in Fahrenheit.
  @JsonKey(name: 'feelslike_f')
  final double? feelslikeF;

  /// The visibility in kilometers.
  @JsonKey(name: 'vis_km')
  final double? visKm;

  /// The visibility in miles.
  @JsonKey(name: 'vis_miles')
  final double? visMiles;

  /// The UV index.
  @JsonKey(name: 'uv')
  final double? uv;

  /// The wind gust speed in miles per hour.
  @JsonKey(name: 'gust_mph')
  final double? gustMph;

  /// The wind gust speed in kilometers per hour.
  @JsonKey(name: 'gust_kph')
  final double? gustKph;

  /// Converts this [Current] instance to a JSON map.
  Map<String, dynamic> toJson() => _$CurrentToJson(this);

  @override
  List<Object?> get props => [
        lastUpdatedEpoch,
        lastUpdated,
        tempC,
        tempF,
        isDay,
        condition,
        windMph,
        windKph,
        windDegree,
        windDir,
        pressureMb,
        pressureIn,
        precipMm,
        precipIn,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
        visKm,
        visMiles,
        uv,
        gustMph,
        gustKph,
      ];
}
