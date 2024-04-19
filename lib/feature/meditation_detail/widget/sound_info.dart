part of '../meditation_detail_view.dart';

final class _SoundInfo extends StatelessWidget with FormatTimerMixin {
  const _SoundInfo({
    required this.sound,
    required this.state,
  });

  final Sound sound;
  final SoundState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        children: [
          Text(
            sound == state.sound ? formatTimer(state.timer) : '00:00',
            style: context.theme.textTheme.titleLarge!.copyWith(
              color: ColorName.colorMagnesium,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          Text(
            formatTimer(
              Duration(
                seconds: sound.voiceLength.toInt(),
              ),
            ),
            style: context.theme.textTheme.titleLarge!.copyWith(
              color: ColorName.colorMagnesium,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
