part of '../meditation_view.dart';

final class _MeditationTabBarView extends StatefulWidget {
  const _MeditationTabBarView();

  @override
  State<_MeditationTabBarView> createState() => _MeditationTabBarViewState();
}

final class _MeditationTabBarViewState extends State<_MeditationTabBarView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        MeditationsCustomRoute(
          soundLists: SoundLists.meditation,
        ),
        MeditationsCustomRoute(
          soundLists: SoundLists.yoga,
        ),
        MeditationsCustomRoute(
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
          appBar: const _MeditationAppBar(),
          body: Column(
            children: [
              _MeditationTabBar(
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

final class _MeditationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _MeditationAppBar();

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
