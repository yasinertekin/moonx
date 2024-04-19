part of 'meditations_custom_view.dart';

final class _PlayButton extends StatefulWidget {
  const _PlayButton({
    required this.sound,
    required this.index,
  });

  final Sound sound;
  final int index;

  @override
  State<_PlayButton> createState() => _PlayButtonState();
}

final class _PlayButtonState extends State<_PlayButton> with _PlayButtonMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoundCubit, SoundState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 12,
          ),
          child: GestureDetector(
            child: Assets.icons.icPlayButton.svg(
              package: 'gen',
            ),
            onTap: () {
              if (state.status == SoundStatus.playing &&
                  state.sound == widget.sound) {
                context.read<SoundCubit>().stopSound();
              } else {
                context.read<SoundCubit>().playSound(widget.sound);
              }
            },
          ),
        );
      },
    );
  }
}
