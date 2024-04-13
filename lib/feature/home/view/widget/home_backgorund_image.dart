part of '../home_view.dart';

final class _HomeBackgroundImage extends StatelessWidget {
  const _HomeBackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Assets.images.imgHomeBackground.image(
        fit: BoxFit.fill,
        package: 'gen',
      ),
    );
  }
}
