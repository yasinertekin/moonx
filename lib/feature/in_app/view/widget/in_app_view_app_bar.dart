part of '../inn_app_view.dart';

final class _InAppViewAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _InAppViewAppBar();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: const _AppBarTitle(),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Locator.appRouter.maybePop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

final class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Lorem Ipssum\nDolar Sit',
      style: context.theme.textTheme.titleLarge?.copyWith(
        color: ColorName.colorBrilliance,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    );
  }
}
