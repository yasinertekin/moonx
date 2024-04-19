import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:gen/src/index.dart';

/// Represents a list of sounds categorized by a title.
@immutable
final class SoundList extends Equatable {
  /// Creates a new instance of [SoundList].
  const SoundList({
    required this.categoryTitle,
    required this.sound,
  });

  /// The title of the category.
  final String categoryTitle;

  /// The list of sounds.
  final List<Sound> sound;

  @override
  List<Object> get props => [categoryTitle, sound];

  /// Creates a copy of this [SoundList] with the specified values.
  ///
  /// If [categoryTitle] or [sound] is not provided,
  /// the current values will be used.
  SoundList copyWith({
    String? categoryTitle,
    List<Sound>? sound,
  }) {
    return SoundList(
      categoryTitle: categoryTitle ?? this.categoryTitle,
      sound: sound ?? this.sound,
    );
  }
}
