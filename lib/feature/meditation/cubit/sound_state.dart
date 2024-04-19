part of 'sound_cubit.dart';

/// Represents the state of the sound in the meditation feature.
final class SoundState extends Equatable {
  /// Constructs a [SoundState] object.
  const SoundState({
    required this.status,
    required this.timer,
    this.sound,
    this.meditationList = const [],
    this.sleepList = const [],
    this.musicList = const [],
  });

  /// The status of the sound.
  final SoundStatus status;

  /// The currently playing sound.
  final Sound? sound;

  /// The duration of the sound.
  final Duration timer;

  /// The list of sounds for meditation.
  final List<SoundList> meditationList;

  /// The list of sounds for sleep.
  final List<SoundList> sleepList;

  /// The list of sounds for music.
  final List<SoundList> musicList;

  @override
  List<Object> get props =>
      [status, timer, meditationList, sleepList, musicList];

  /// Creates a copy of this [SoundState] object with the given parameters.
  SoundState copyWith({
    SoundStatus? status,
    Sound? sound,
    Duration? timer,
    List<SoundList>? meditationList,
    List<SoundList>? sleepList,
    List<SoundList>? musicList,
  }) {
    return SoundState(
      status: status ?? this.status,
      sound: sound ?? this.sound,
      timer: timer ?? this.timer,
      meditationList: meditationList ?? this.meditationList,
      sleepList: sleepList ?? this.sleepList,
      musicList: musicList ?? this.musicList,
    );
  }
}

/// Represents the status of the sound.
/// Enum representing the status of a sound.
///
/// The possible sound statuses are:

enum SoundStatus {
  /// - [SoundStatus.playing]: The sound is currently playing.
  playing,

  /// - [SoundStatus.paused]: The sound is currently paused.

  paused,

  /// - [SoundStatus.stopped]: The sound is currently stopped.

  stopped,

  /// - [SoundStatus.initia]: The sound is in the initial state.

  initial,
}
