part of '../medidation_view.dart';

final class _MedidationTabbar extends StatelessWidget {
  const _MedidationTabbar({
    required this.tabsRouter,
  });

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: Material(
        color: ColorName.colorAtlanticCharter,
        shape: RoundedRectangleBorder(
          borderRadius: ProjectRadius.small.borderRadius,
        ),
        child: _TabBarList(tabsRouter: tabsRouter),
      ),
    );
  }
}

final class _TabBarList extends StatelessWidget {
  const _TabBarList({
    required this.tabsRouter,
  });

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: List.generate(
          MedidationTabs.values.length,
          (index) {
            final tab = MedidationTabs.values[index];
            return _TabBarView(
              tabsRouter: tabsRouter,
              tab: tab,
              index: index,
            );
          },
        ),
      ),
    );
  }
}

final class _TabBarView extends StatelessWidget {
  const _TabBarView({
    required this.tabsRouter,
    required this.tab,
    required this.index,
  });

  final TabsRouter tabsRouter;
  final MedidationTabs tab;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: tabsRouter.activeIndex == index
            ? ColorName.colorThickBlue
            : ColorName.colorAtlanticCharter,
        shape: RoundedRectangleBorder(
          borderRadius: ProjectRadius.small.borderRadius,
        ),
        child: GestureDetector(
          onTap: () async {
            tabsRouter.setActiveIndex(index);
          },
          child: _TabTitle(tab: tab),
        ),
      ),
    );
  }
}

final class _TabTitle extends StatelessWidget {
  const _TabTitle({
    required this.tab,
  });

  final MedidationTabs tab;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        tab.title,
        style: context.theme.textTheme.titleLarge!.copyWith(
          color: Colors.white,
          fontSize: 13,
        ),
      ),
    );
  }
}
