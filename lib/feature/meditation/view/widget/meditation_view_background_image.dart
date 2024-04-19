part of '../meditation_view.dart';

final class _MeditationDetailBackgroundImage extends StatelessWidget {
  const _MeditationDetailBackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Assets.images.imgMedidationBackground.image(
        package: 'gen',
        fit: BoxFit.cover,
      ),
    );
  }
}
