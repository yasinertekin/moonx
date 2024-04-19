import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/service/sound_service.dart';

part 'sound_state.dart';

/// Cubit responsible for managing the sound state in the meditation feature.
///
/// This cubit is used to control the playback of sounds
/// in the meditation feature.
/// It provides methods to play, pause, stop, and seek sounds,
/// as well as update the timer.
/// It also fetches the list of available sounds for meditation,
///  sleep, and music.
/// When the cubit is closed, it disposes of the sound service.
final class SoundCubit extends Cubit<SoundState> {
  /// Constructs a [SoundCubit] object.
  ///
  /// The [soundService] parameter is required and
  /// is used to interact with the sound playback functionality.
  /// The initial state of the cubit is set to have an
  ///  initial sound status of "initial" and a timer of zero duration.
  /// The [fetchSoundList] method is called to populate the sound lists.
  SoundCubit({
    required SoundService soundService,
  })  : _soundService = soundService,
        super(
          const SoundState(
            status: SoundStatus.initial,
            timer: Duration.zero,
          ),
        ) {
    fetchSoundList();
  }

  final SoundService _soundService;

  /// Plays the specified sound.
  ///
  /// The [sound] parameter specifies the sound to be played.
  /// The state is updated to reflect the playing status and the
  ///  currently playing sound.
  void playSound(Sound sound) {
    _soundService.playSound(sound.audioPath);
    emit(
      state.copyWith(
        status: SoundStatus.playing,
        sound: sound,
        timer: state.timer,
      ),
    );
  }

  /// Pauses the currently playing sound.
  void pauseSound() {
    _soundService.pauseSound();
    emit(state.copyWith(status: SoundStatus.paused));
  }

  /// Stops the currently playing sound.
  void stopSound() {
    _soundService.stopSound();
    emit(state.copyWith(status: SoundStatus.stopped));
  }

  /// Updates the timer to reflect the current position of the sound.
  Future<void> updateTimer() async {
    await for (final duration in _soundService.getCurrentDuration()) {
      emit(
        state.copyWith(
          timer: duration,
        ),
      );
    }
  }

  /// Fetches the list of available sounds for meditation, sleep, and music.
  void fetchSoundList() {
    final meditationList = SoundLists.meditation.soundLists;
    final sleepList = SoundLists.music.soundLists;
    final musicList = SoundLists.yoga.soundLists;

    emit(
      state.copyWith(
        meditationList: meditationList,
        sleepList: sleepList,
        musicList: musicList,
      ),
    );
  }

  @override
  Future<void> close() {
    _soundService.dispose();
    return super.close();
  }

  /// Seek to a specific position in the currently playing sound.
  void seekTo(Duration position) {
    _soundService.seekTo(position);

    emit(
      state.copyWith(
        timer: position,
      ),
    );
  }

  /// Resume the currently paused sound.
  void resumeSound() {
    _soundService.resumeSound();
    emit(state.copyWith(status: SoundStatus.playing));
  }
}
