part of '../../../home_view.dart';

final class _MoonImage extends StatelessWidget {
  const _MoonImage();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Assets.images.imgMoon.image(
        package: 'gen',
        fit: BoxFit.cover,
        height: context.dynamicHeight(0.2),
      ),
    );
  }
}
