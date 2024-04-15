part of '../../home_view.dart';

final class _HomeHeaderView extends StatefulWidget {
  const _HomeHeaderView();

  @override
  State<_HomeHeaderView> createState() => _HomeHeaderViewState();
}

final class _HomeHeaderViewState extends State<_HomeHeaderView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeHeaderCubit>(
      create: (context) => HomeHeaderCubit(),
      child: const Column(
        children: [
          _DateTimeButton(),
          EmptySizedBox(),
          _HomeHeaderPageBuilder(),
        ],
      ),
    );
  }
}

final class _HomeHeaderPageBuilder extends StatelessWidget {
  const _HomeHeaderPageBuilder();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeHeaderCubit, HomeHeaderState>(
      builder: (context, state) {
        return SizedBox(
          height: state.index == HomeHeader.location
              ? context.dynamicHeight(0.51)
              : context.dynamicHeight(0.58),
          child: PageView.builder(
            controller: state.pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: HomeHeader.values.length,
            itemBuilder: (context, index) {
              return HomeHeader.values[index].widget;
            },
          ),
        );
      },
    );
  }
}

enum HomeHeader {
  location(_LocationWidget()),

  calendar(_HomeCalenderWidget());

  final Widget widget;

  // ignore: sort_constructors_first
  const HomeHeader(this.widget);
}
