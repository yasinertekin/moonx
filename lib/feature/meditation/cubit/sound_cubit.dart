import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/service/sound_service.dart';

enum SoundStatus { playing, paused, stopped, initial }

final class SoundState extends Equatable {
  const SoundState({
    required this.status,
    required this.timer,
    this.sound,
    this.medidationlist = const [],
    this.sleepList = const [],
    this.musicList = const [],
  });

  final SoundStatus status;
  final Sound? sound;
  final Duration timer;
  final List<SoundList> medidationlist; // Adjusted types here
  final List<SoundList> sleepList; // Adjusted types here
  final List<SoundList> musicList; // Adjusted types here

  @override
  List<Object> get props =>
      [status, timer, medidationlist, sleepList, musicList];

  SoundState copyWith({
    SoundStatus? status,
    Sound? sound,
    Duration? timer,
    List<SoundList>? medidationlist,
    List<SoundList>? sleepList,
    List<SoundList>? musicList,
  }) {
    return SoundState(
      status: status ?? this.status,
      sound: sound ?? this.sound,
      timer: timer ?? this.timer,
      medidationlist: medidationlist ?? this.medidationlist,
      sleepList: sleepList ?? this.sleepList,
      musicList: musicList ?? this.musicList,
    );
  }
}

final class SoundCubit extends Cubit<SoundState> {
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

  void pauseSound() {
    _soundService.pauseSound();
    emit(state.copyWith(status: SoundStatus.paused));
  }

  void stopSound() {
    _soundService.stopSound();
    emit(state.copyWith(status: SoundStatus.stopped));
  }

  Future<void> updateTimer() async {
    await for (final duration in _soundService.getCurrentDuration()) {
      emit(
        state.copyWith(
          timer: duration,
        ),
      );
    }
  }

  void fetchSoundList() {
    final meditationList = SoundLists.medidation.soundLists;
    final sleepList = SoundLists.music.soundLists;
    final musicList = SoundLists.yoga.soundLists;

    emit(
      state.copyWith(
        medidationlist: meditationList,
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
    final seekPosition = position.inSeconds.toDouble();

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
