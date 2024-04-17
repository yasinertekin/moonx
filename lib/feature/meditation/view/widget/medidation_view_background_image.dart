part of '../medidation_view.dart';

final class _MedidationViewBackgroundImage extends StatelessWidget {
  const _MedidationViewBackgroundImage();

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
