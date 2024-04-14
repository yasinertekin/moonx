part of '../../home_view.dart';

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
        _HomeHeaderPageBuilder(pageController: _pageController),
      ],
    );
  }
}

final class _HomeHeaderPageBuilder extends StatelessWidget {
  const _HomeHeaderPageBuilder({
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.58),
      child: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _HomeHeader.values.length,
        itemBuilder: (context, index) {
          return _HomeHeader.values[index].widget;
        },
      ),
    );
  }
}

enum _HomeHeader {
  location(_LocationWidget()),

  calendar(_HomeCalenderWidget());

  final Widget widget;

  // ignore: sort_constructors_first
  const _HomeHeader(this.widget);
}
