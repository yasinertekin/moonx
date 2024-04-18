part of '../medidation_view.dart';

final class _MedidationTabBarView extends StatefulWidget {
  const _MedidationTabBarView();

  @override
  State<_MedidationTabBarView> createState() => _MedidationTabBarViewState();
}

final class _MedidationTabBarViewState extends State<_MedidationTabBarView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        MedidationsCustomRoute(
          soundLists: SoundLists.medidation,
        ),
        MedidationsCustomRoute(
          soundLists: SoundLists.yoga,
        ),
        MedidationsCustomRoute(
          soundLists: SoundLists.music,
        ),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const _MedidationAppBar(),
          body: Column(
            children: [
              _MedidationTabbar(
                tabsRouter: tabsRouter,
              ),
              Expanded(
                flex: 9,
                child: child,
              ),
            ],
          ),
        );
      },
    );
  }
}

final class _MedidationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _MedidationAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //  excludeHeaderSemantics: true,
      forceMaterialTransparency: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          //  context.router.pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
