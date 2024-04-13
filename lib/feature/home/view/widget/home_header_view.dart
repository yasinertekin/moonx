part of '../home_view.dart';

final class _HomeHeaderView extends StatefulWidget {
  const _HomeHeaderView();

  @override
  State<_HomeHeaderView> createState() => _HomeHeaderViewState();
}

final class _HomeHeaderViewState extends State<_HomeHeaderView> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _DateTimeButton(
          _pageController,
        ),
        const EmptySizedBox(),
        SizedBox(
          height: context.dynamicHeight(0.53),
          child: PageView.builder(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: HomeHeader.values.length,
            itemBuilder: (context, index) {
              return HomeHeader.values[index].widget;
            },
          ),
        ),
      ],
    );
  }
}

final class _DateTimeButton extends StatelessWidget {
  const _DateTimeButton(
    this.pageController,
  );

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: ProjectPadding.medium.paddingOnlyRight,
        child: ProjectButton(
          backgroundColor: ColorName.colorKon,
          width: context.dynamicWidth(0.3),
          height: context.dynamicHeight(0.05),
          borderRadiusGeometry: ProjectRadius.small.borderRadius,
          onPressed: () {
            switch (HomeHeader.values[pageController.page!.toInt()]) {
              case HomeHeader.location:
                pageController.animateToPage(
                  HomeHeader.values.length - 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              case HomeHeader.calendar:
                pageController.animateToPage(
                  HomeHeader.values.length - 2,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
            }
          },
          title: '2 Aug 2023',
          titleColor: ColorName.colorThickBlue,
        ),
      ),
    );
  }
}

enum HomeHeader {
  location(_LocationWidget()),

  calendar(_HomeCalenderWidget());

  final Widget widget;

  const HomeHeader(this.widget);
}
