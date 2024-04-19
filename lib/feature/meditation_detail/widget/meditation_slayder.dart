part of '../meditation_detail_view.dart';

final class _MeditationSlider extends StatelessWidget {
  const _MeditationSlider({
    required this.sound,
    required this.state,
  });

  final Sound sound;
  final SoundState state;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: ColorName.colorThickBlue,
      inactiveColor: ColorName.colorFiftiethShadeOfGrey,
      value: sound == state.sound ? state.timer.inSeconds.toDouble() : 0,
      max: Duration(
        seconds: sound.voiceLength.toInt(),
      ).inSeconds.toDouble(),
      onChanged: (value) {
        context.read<SoundCubit>().seekTo(
              Duration(seconds: value.toInt()),
            );
        if (value == sound.voiceLength.toInt()) {
          context.read<SoundCubit>().stopSound();
        }
      },
    );
  }
}
