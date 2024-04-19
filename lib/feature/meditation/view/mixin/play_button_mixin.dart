part of '../widget/meditations_custom_view.dart';

base mixin _PlayButtonMixin on State<_PlayButton> {
  @override
  void dispose() {
    super.dispose();
    context.read<SoundCubit>().close();
  }
}
