import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

/// Represents a sound category.
@immutable
final class SoundCategory {
  /// Constructs a new instance of [SoundCategory].
  const SoundCategory({
    required this.title,
    required this.soundLists,
  });

  /// The title of the sound category.
  final String title;

  /// The list of sound lists.
  final List<SoundList> soundLists;

  /// Creates a copy of this [SoundCategory] but with the given fields
  /// updated to the new values.
  ///
  ///
  SoundCategory copyWith({
    String? title,
    List<SoundList>? soundLists,
  }) {
    return SoundCategory(
      title: title ?? this.title,
      soundLists: soundLists ?? this.soundLists,
    );
  }
}
