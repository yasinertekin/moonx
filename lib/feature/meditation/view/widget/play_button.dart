part of '../widget/medidations_custom_view.dart';

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

class _PlayButtonState extends State<_PlayButton> {
  @override
  void dispose() {
    super.dispose();
    context.read<SoundCubit>().close();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SoundCubit>(context);
    return BlocBuilder<SoundCubit, SoundState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 12,
          ),
          child: GestureDetector(
            child: state.status == SoundStatus.playing &&
                    state.sound == widget.sound
                ? const Icon(
                    Icons.pause,
                    color: ColorName.colorEmptiness,
                    size: 20,
                  )
                : Assets.icons.icPlayButton.svg(
                    package: 'gen',
                  ),
            onTap: () {
              if (state.status == SoundStatus.playing &&
                  state.sound == widget.sound) {
                context.read<SoundCubit>().stopSound();
                bloc.updateTimer();
              } else {
                context.read<SoundCubit>().playSound(widget.sound);
                bloc.updateTimer();
              }
            },
          ),
        );
      },
    );
  }
}
