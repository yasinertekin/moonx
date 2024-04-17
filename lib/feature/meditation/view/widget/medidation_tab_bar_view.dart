part of '../medidation_view.dart';

final class _MedidationTabBarView extends StatefulWidget {
  const _MedidationTabBarView();

  @override
  State<_MedidationTabBarView> createState() => _MedidationTabBarViewState();
}

final class _MedidationTabBarViewState extends State<_MedidationTabBarView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AutoTabsRouter(
        routes: [
          MedidationsCustomRoute(
            soundLists: SoundLists.music,
          ),
          MedidationsCustomRoute(
            soundLists: SoundLists.soundCategory,
          ),
          MedidationsCustomRoute(
            soundLists: SoundLists.yoga,
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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text('Meditation'),
            ),
            body: Column(
              children: [
                _MedidationTabbar(
                  tabsRouter: tabsRouter,
                ),
                Expanded(child: child),
              ],
            ),
          );
        },
      ),
    );
  }
}

//  MedidationsCustomView(
