import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
final class Voice extends Equatable {
  const Voice({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.audio,
    required this.smallImageUrl,
    required this.voiceLength,
  });

  final int id;
  final String title;
  final String subtitle;
  final String image;
  final String audio;
  final String smallImageUrl;
  final String voiceLength;

  @override
  List<Object> get props => [
        id,
        title,
        subtitle,
        image,
        audio,
        smallImageUrl,
        voiceLength,
      ];
}
