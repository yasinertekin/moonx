import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

/// Users
@immutable
@JsonSerializable()
final class Users extends Equatable {
  /// Users
  Users({
    required this.name,
    required this.email,
    required this.birthDate,
    required this.birthTime,
    required this.placeOfBirth,
    String? id,
  }) : id = id ?? Random().nextInt(1000).toString();

  /// Users fromJson
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  /// Users toJson
  Map<String, dynamic> toJson() => _$UsersToJson(this);

  /// Users id
  final String id;

  /// Users name
  final String name;

  /// Users email
  final String email;

  /// Users birthDate
  final String birthDate;

  /// Users birthTime
  final String birthTime;

  /// Users Place of birth
  final String placeOfBirth;

  @override
  List<Object> get props => [
        id,
        name,
        email,
        birthDate,
        birthTime,
        placeOfBirth,
      ];

  /// Users copyWith
  Users copyWith({
    String? id,
    String? name,
    String? email,
    String? birthDate,
    String? birthTime,
    String? placeOfBirth,
  }) {
    return Users(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      birthDate: birthDate ?? this.birthDate,
      birthTime: birthTime ?? this.birthTime,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
    );
  }
}
