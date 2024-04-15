import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/src/model/voice/voice.dart';

@immutable
final class VoiceList extends Equatable {
  final List<Voice> voices;

  final String voicesListTitle;
  final String voiceBackgroundImage;

  const VoiceList({
    required this.voices,
    required this.voicesListTitle,
    required this.voiceBackgroundImage,
  });

  @override
  List<Object> get props => [voices, voicesListTitle, voiceBackgroundImage];
}
