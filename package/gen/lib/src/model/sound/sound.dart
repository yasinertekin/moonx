import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

/// Represents a sound with its properties.
@immutable
class Sound extends Equatable {
  /// Creates a new instance of the [Sound] class.
  const Sound({
    required this.title,
    required this.subtitle,
    required this.bigImage,
    required this.audioPath,
    required this.smallImage,
    required this.voiceLength,
  });

  /// The title of the sound.
  final String title;

  /// The subtitle of the sound.
  final String subtitle;

  /// The big image associated with the sound.
  final Image bigImage;

  /// The audio path of the sound.
  final String audioPath;

  /// The small image associated with the sound.
  final Image smallImage;

  /// The length of the sound in seconds.
  final double voiceLength;

  @override
  List<Object> get props => [
        title,
        subtitle,
        bigImage,
        audioPath,
        smallImage,
        voiceLength,
      ];

  /// Creates a copy of this [Sound] but with the given fields
  /// updated to the new values.
  Sound copyWith({
    String? title,
    String? subtitle,
    Image? bigImage,
    String? audioPath,
    Image? smallImageUrl,
    double? voiceLength,
    Duration? duration,
  }) {
    return Sound(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      bigImage: bigImage ?? this.bigImage,
      audioPath: audioPath ?? this.audioPath,
      smallImage: smallImageUrl ?? smallImage,
      voiceLength: voiceLength ?? this.voiceLength,
    );
  }
}
