import 'package:audioplayers/audioplayers.dart';

/// An abstract interface class for sound services.
abstract interface class SoundService {
  /// Plays the specified sound.
  ///
  /// [soundName] - The name of the sound to be played.
  void playSound(String soundName);

  /// Stops the currently playing sound.
  void stopSound();

  /// Pauses the currently playing sound.
  void pauseSound();

  /// Resumes the paused sound.
  void resumeSound();

  /// Gets the current position of the currently playing sound.
  Stream<Duration> getCurrentDuration();

  /// Disposes the resources used by the sound service.
  void dispose();

  /// Seek to a specific position in the currently playing sound.
  void seekTo(Duration position);
}

/// A concrete implementation of the [SoundService] interface.
final class SoundServiceImpl implements SoundService {
  /// The audio player instance.
  final player = AudioPlayer();

  @override
  void playSound(String soundName) {
    player.play(
      AssetSource(soundName),
    );
  }

  @override
  void stopSound() {
    player.stop();
  }

  @override
  void pauseSound() {
    player.pause();
  }

  @override
  void resumeSound() {
    player.resume();
  }

  @override
  void dispose() {
    player.dispose();
  }

  @override
  Stream<Duration> getCurrentDuration() {
    return player.onPositionChanged;
  }

  @override
  void seekTo(Duration position) {
    player.seek(position);
  }
}
