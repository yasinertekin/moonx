import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_location.g.dart';

@JsonSerializable()
@immutable
final class WeatherLocation with EquatableMixin {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'region')
  final String? region;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'lat')
  final double? lat;
  @JsonKey(name: 'lon')
  final double? lon;
  @JsonKey(name: 'tz_id')
  final String? tzId;
  @JsonKey(name: 'localtime_epoch')
  final double? localtimeEpoch;
  @JsonKey(name: 'localtime')
  final String? localtime;

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

  factory WeatherLocation.fromJson(Map<String, dynamic> json) =>
      _$WeatherLocationFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherLocationToJson(this);

  @override
  List<Object?> get props =>
      [name, region, country, lat, lon, tzId, localtimeEpoch, localtime];

  WeatherLocation copyWith({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    double? localtimeEpoch,
    String? localtime,
  }) {
    return WeatherLocation(
      name: name ?? this.name,
      region: region ?? this.region,
      country: country ?? this.country,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
      tzId: tzId ?? this.tzId,
      localtimeEpoch: localtimeEpoch ?? this.localtimeEpoch,
      localtime: localtime ?? this.localtime,
    );
  }
}
