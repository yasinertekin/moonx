part of '../medidation_view.dart';

class _MedidationTabbar extends StatelessWidget {
  const _MedidationTabbar({
    required this.tabsRouter,
    super.key,
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
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: context.dynamicHeight(0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: List.generate(
                MedidationTabs.values.length,
                (index) {
                  final tab = MedidationTabs.values[index];
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
                        child: Center(
                          child: Text(tab.title),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
