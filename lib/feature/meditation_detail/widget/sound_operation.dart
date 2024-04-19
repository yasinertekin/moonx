part of '../meditation_detail_view.dart';

final class _SoundOperation extends StatelessWidget {
  const _SoundOperation({
    required this.sound,
    required this.state,
    required this.bloc,
  });

  final Sound sound;
  final SoundCubit bloc;
  final SoundState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              context.read<SoundCubit>().stopSound();
            },
            child: Assets.images.btnRefreshPlaylist.image(
              package: 'gen',
            ),
          ),
          GestureDetector(
            onTap: () {
              context.read<SoundCubit>().seekTo(
                    Duration(seconds: state.timer.inSeconds - 10),
                  );
            },
            child: Assets.images.btnBackPlaylist.image(
              package: 'gen',
            ),
          ),
          GestureDetector(
            onTap: () {
              if (state.status == SoundStatus.playing &&
                  state.sound == sound &&
                  state.status != SoundStatus.paused) {
                context.read<SoundCubit>().pauseSound();
                bloc.updateTimer();
              } else {
                context.read<SoundCubit>().playSound(sound);
                bloc.updateTimer();
              }
            },
            child: state.status == SoundStatus.playing && state.sound == sound
                ? Assets.images.imgBtnPauseButton.image(package: 'gen')
                : Assets.images.btnPlayPlaylist.image(
                    package: 'gen',
                  ),
          ),
          GestureDetector(
            onTap: () {
              context.read<SoundCubit>().seekTo(
                    Duration(seconds: state.timer.inSeconds + 10),
                  );
            },
            child: Assets.images.btnNextPlaylist.image(
              package: 'gen',
            ),
          ),
          Assets.images.imgFav.image(
            package: 'gen',
          ),
        ],
      ),
    );
  }
}
