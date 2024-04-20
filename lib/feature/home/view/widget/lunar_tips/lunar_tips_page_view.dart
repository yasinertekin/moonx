part of '../../home_view.dart';

final class _LunarTipsPageView extends StatefulWidget {
  const _LunarTipsPageView();

  @override
  State<_LunarTipsPageView> createState() => _LunarTipsPageViewState();
}

final class _LunarTipsPageViewState extends State<_LunarTipsPageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(1),
      child: BlocBuilder<LunarTipsCubit, LunarTipsState>(
        builder: (context, state) => PageView.builder(
          controller: state.pageController,
          itemCount: state.lunarTips.length,
          itemBuilder: (context, index) {
            final lunarTips = state.lunarTips[index];
            return _LunarTipsPageViewItem(
              lunarTips,
              index,
            );
          },
        ),
      ),
    );
  }
}

final class _LunarTipsPageViewItem extends StatelessWidget {
  const _LunarTipsPageViewItem(
    this.lunarTips,
    this.index,
  );

  final LunarTips lunarTips;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: ColorName.colorGloomyPurple,
          width: 3,
        ),
        borderRadius: ProjectRadius.small.borderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _LunarImage(lunarTips: lunarTips),
          _LunarBlocBuilder(lunarTips: lunarTips),
        ],
      ),
    );
  }
}

final class _LunarBlocBuilder extends StatelessWidget {
  const _LunarBlocBuilder({
    required this.lunarTips,
  });

  final LunarTips lunarTips;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LunarTipsCubit, LunarTipsState>(
      builder: (context, state) {
        switch (state.lunarTipsStatus) {
          case LunarTipsStatus.loading:
            return const CustomProgressIndicator();
          case LunarTipsStatus.success:
            return _LunarHoroscopeDescription(lunarTips: lunarTips);
          case LunarTipsStatus.failure:
            return Text(
              state.error,
              style: const TextStyle(
                color: ColorName.colorEmptiness,
              ),
            );
        }
      },
    );
  }
}

final class _LunarImage extends StatelessWidget {
  const _LunarImage({
    required this.lunarTips,
  });

  final LunarTips lunarTips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.medium.paddingOnlyTopLeft,
      child: lunarTips.bigImage,
    );
  }
}

final class _LunarHoroscopeDescription extends StatelessWidget {
  const _LunarHoroscopeDescription({
    required this.lunarTips,
  });

  final LunarTips lunarTips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.medium.paddingAll,
      child: Text(
        maxLines: 30,
        lunarTips.description ?? '',
        style: const TextStyle(
          color: ColorName.colorEmptiness,
          fontSize: 14,
        ),
      ),
    );
  }
}
