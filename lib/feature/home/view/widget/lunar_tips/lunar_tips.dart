part of '../../home_view.dart';

final class _LunarTips extends StatelessWidget {
  const _LunarTips();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _LunarTipsTitleText(),
          EmptySizedBox(),
          _LunarTipsListView(),
        ],
      ),
    );
  }
}

final class _LunarTipsListView extends StatelessWidget {
  const _LunarTipsListView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            const EmptySizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: LunarTips.lunarTipsList.length,
        itemBuilder: (BuildContext context, int index) {
          return _LunarTipsLCustomListTile(
            LunarTips.lunarTipsList[index],
            index,
          );
        },
      ),
    );
  }
}

final class _LunarTipsLCustomListTile extends StatelessWidget {
  const _LunarTipsLCustomListTile(
    this.lunarTips,
    this.index,
  );

  final LunarTips lunarTips;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        return SizedBox(
          width: context.dynamicWidth(0.38),
          child: ListTile(
            onTap: state.users.isPremium
                ? () {
                    context.read<LunarTipsCubit>().changePage(index);
                  }
                : () {
                    Locator.appRouter.push(const InAppRoute());
                  },
            shape: RoundedRectangleBorder(
              borderRadius: ProjectRadius.small.borderRadius,
            ),
            title: Text(
              lunarTips.title ?? '',
              style: context.theme.textTheme.titleLarge?.copyWith(
                color: ColorName.colorEmptiness,
                fontSize: 14,
              ),
            ),
            tileColor: lunarTips.backgroundColor,
            leading: lunarTips.imagePath,
          ),
        );
      },
    );
  }
}

final class _LunarTipsTitleText extends StatelessWidget {
  const _LunarTipsTitleText();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.lunarTips,
      style: context.theme.textTheme.titleLarge?.copyWith(
        color: ColorName.colorColdWind,
        fontSize: 16,
      ),
    );
  }
}
