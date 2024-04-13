import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:gen/src/model/weather/weather_location.dart';
import 'package:json_annotation/json_annotation.dart';

import 'current.dart';

part 'weather.g.dart';

@JsonSerializable()
@immutable
final class Weather with EquatableMixin {
  @JsonKey(name: 'location')
  final WeatherLocation? location;
  @JsonKey(name: 'current')
  final Current? current;

  Weather({
    this.location,
    this.current,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  @override
  List<Object?> get props => [location, current];

  Weather copyWith({
    WeatherLocation? location,
    Current? current,
  }) {
    return Weather(
      location: location ?? this.location,
      current: current ?? this.current,
    );
  }
}
