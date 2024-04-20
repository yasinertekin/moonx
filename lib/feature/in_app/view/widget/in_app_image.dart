part of '../inn_app_view.dart';

final class _InAppImage extends StatelessWidget {
  const _InAppImage();

  @override
  Widget build(BuildContext context) {
    return Assets.images.imgInapp.image(
      package: 'gen',
    );
  }
}
