import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'condition.g.dart';

/// Represents the weather condition.
@JsonSerializable()
@immutable
final class Condition with EquatableMixin {
  /// Creates a new instance of the [Condition] class.
  ///
  /// [text] is the text description of the weather condition.
  /// [icon] is the icon representing the weather condition.
  /// [code] is the code representing the weather condition.
  Condition({
    this.text,
    this.icon,
    this.code,
  });

  /// Creates a new instance of the [Condition] class from a JSON map.
  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  /// The text description of the weather condition.
  @JsonKey(name: 'text')
  final String? text;

  /// The icon representing the weather condition.
  @JsonKey(name: 'icon')
  final String? icon;

  /// The code representing the weather condition.
  @JsonKey(name: 'code')
  final double? code;

  /// Converts the [Condition] instance to a JSON map.
  Map<String, dynamic> toJson() => _$ConditionToJson(this);

  @override
  List<Object?> get props => [text, icon, code];
}
