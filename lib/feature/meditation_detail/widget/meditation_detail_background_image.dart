part of '../meditation_detail_view.dart';

final class _MeditationDetailBackgroundImage extends StatelessWidget {
  const _MeditationDetailBackgroundImage({
    required this.sound,
  });

  final Sound sound;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: sound.bigImage,
    );
  }
}
