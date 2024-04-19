part of '../meditation_detail_view.dart';

final class _MeditationPlayer extends StatelessWidget {
  const _MeditationPlayer({
    required this.sound,
    required this.bloc,
  });

  final Sound sound;
  final SoundCubit bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoundCubit, SoundState>(
      builder: (context, state) {
        return Column(
          children: [
            _MeditationSlider(
              sound: sound,
              state: state,
            ),
            Column(
              children: [
                _SoundInfo(sound: sound, state: state),
                const EmptySizedBox(),
                _SoundOperation(
                  sound: sound,
                  bloc: bloc,
                  state: state,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
