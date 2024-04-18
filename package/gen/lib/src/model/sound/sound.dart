import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
final class Sound extends Equatable {
  const Sound({
    required this.title,
    required this.subtitle,
    required this.bigImage,
    required this.audioPath,
    required this.smallImage,
    required this.voiceLength,
    this.duration,
  });

  final String title;
  final String subtitle;
  final Image bigImage;
  final String audioPath;
  final Image smallImage;
  final double voiceLength;
  final Duration? duration;

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
      duration: duration ?? this.duration,
    );
  }
}

/// Enum representing voice assets.
enum SoundAssets {
  /// Represents the voice asset "mustafa_sandal_aya_benzer".
  mustafaSandalAyaBenzer('mustafa_sandal_aya_benzer'),

  /// Represents the voice asset "omer_balikci_coffe_blues".
  omerbalikciCoffeBlues('omer_balikci_coffe_blues'),

  /// Represents the voice asset "serdar_ortaç_şeytan".
  serdarOrtacSeytan('serdar_ortaç_seytan');

  final String value;

  /// Constructs a [SoundAssets] with the given [value].
  // ignore: sort_constructors_first
  const SoundAssets(this.value);

  /// Returns the asset path for the voice asset.
  String get asset => '$value.mp3';
}
