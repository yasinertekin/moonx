import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'condition.g.dart';

@JsonSerializable()
final class Condition with EquatableMixin {
  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: 'icon')
  final String? icon;
  @JsonKey(name: 'code')
  final double? code;

  Condition({
    this.text,
    this.icon,
    this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);

  @override
  List<Object?> get props => [text, icon, code];

  Condition copyWith({
    String? text,
    String? icon,
    double? code,
  }) {
    return Condition(
      text: text ?? this.text,
      icon: icon ?? this.icon,
      code: code ?? this.code,
    );
  }
}
