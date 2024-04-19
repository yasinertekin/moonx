import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_location.g.dart';

/// Represents the location information for weather.
@JsonSerializable()
@immutable
final class WeatherLocation with EquatableMixin {
  /// Creates a new instance of [WeatherLocation].
  WeatherLocation({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  /// Creates a new instance of [WeatherLocation] from a JSON map.
  factory WeatherLocation.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationFromJson(json);

  /// The name of the location.
  @JsonKey(name: 'name')
  final String? name;

  /// The region of the location.
  @JsonKey(name: 'region')
  final String? region;

  /// The country of the location.
  @JsonKey(name: 'country')
  final String? country;

  /// The latitude coordinate of the location.
  @JsonKey(name: 'lat')
  final double? lat;

  /// The longitude coordinate of the location.
  @JsonKey(name: 'lon')
  final double? lon;

  /// The timezone ID of the location.
  @JsonKey(name: 'tz_id')
  final String? tzId;

  /// The epoch time of the local time.
  @JsonKey(name: 'localtime_epoch')
  final double? localtimeEpoch;

  /// The local time of the location.
  @JsonKey(name: 'localtime')
  final String? localtime;

  /// Converts the [WeatherLocation] instance to a JSON map.
  Map<String, dynamic> toJson() => _$WeatherLocationToJson(this);

  @override
  List<Object?> get props =>
      [name, region, country, lat, lon, tzId, localtimeEpoch, localtime];
}
