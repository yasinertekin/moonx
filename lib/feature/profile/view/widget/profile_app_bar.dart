part of '../profile_view.dart';

final class _ProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _ProfileAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorName.colorRavensCoat,
      title: const _AppBarTitle(),
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}

final class _AppBarLeading extends StatelessWidget {
  const _AppBarLeading();

  @override
  Widget build(BuildContext context) {
    return Assets.images.imgRightBtn.image(
      package: 'gen',
    );
  }
}

final class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.settingsTitle,
      style: context.theme.textTheme.titleLarge?.copyWith(
        color: ColorName.colorEmptiness,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
