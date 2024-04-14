part of '../../../home_view.dart';

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
          onPressed: _changePage,
          title: '2 Aug 2023',
          titleColor: ColorName.colorThickBlue,
        ),
      ),
    );
  }

  void _changePage() {
    switch (_HomeHeader.values[pageController.page!.toInt()]) {
      case _HomeHeader.location:
        pageController.animateToPage(
          _HomeHeader.values.length - 1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      case _HomeHeader.calendar:
        pageController.animateToPage(
          _HomeHeader.values.length - 2,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
    }
  }
}
