part of '../meditation_detail_view.dart';

final class _SoundTitle extends StatelessWidget {
  const _SoundTitle({
    required this.sound,
  });

  final Sound sound;

  @override
  Widget build(BuildContext context) {
    return Text(
      sound.title,
      style: const TextStyle(
        color: ColorName.colorEmptiness,
        fontSize: 20,
      ),
    );
  }
}
