part of '../inn_app_view.dart';

final class _InAppOptionsList extends StatelessWidget {
  const _InAppOptionsList();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<InAppCubit>(context);
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: Stack(
        children: [
          const _MostPopularWidget(),
          _OptionsListBuilder(bloc: bloc),
        ],
      ),
    );
  }
}

final class _OptionsListBuilder extends StatelessWidget {
  const _OptionsListBuilder({
    required this.bloc,
  });

  final InAppCubit bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.dynamicWidth(0.05),
      ),
      child: SizedBox(
        height: context.dynamicHeight(0.35),
        child: BlocBuilder<InAppCubit, InAppState>(
          builder: (context, state) {
            return ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return EmptySizedBox(
                  height: context.dynamicHeight(0.01),
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.inAppList.length,
              itemBuilder: (BuildContext context, int index) {
                final inApp = state.inAppList[index];
                return _OptionsListTile(
                  inApp: inApp,
                  bloc: bloc,
                  index: index,
                  inAppList: state.inAppList,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

final class _OptionsListTile extends StatefulWidget {
  const _OptionsListTile({
    required this.inApp,
    required this.bloc,
    required this.index,
    required this.inAppList,
  });

  final InApp inApp;
  final InAppCubit bloc;
  final int index;
  final List<InApp> inAppList;

  @override
  State<_OptionsListTile> createState() => _OptionsListTileState();
}

final class _OptionsListTileState extends State<_OptionsListTile>
    with _OptionsListTileMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: _borderColor(),
          ),
          borderRadius: ProjectRadius.medium.borderRadius,
        ),
        tileColor: _tileColor(),
        onTap: widget.inAppList[widget.index].isSelect
            ? null
            : () {
                widget.bloc.toggleSelect(widget.index);
              },
        title: Text(
          '${widget.inApp.avatarCount} unique avatars',
          style: const TextStyle(
            color: ColorName.colorBrilliance,
            fontSize: 16,
          ),
        ),
        trailing: Text(
          '${widget.inApp.price}${widget.index == 1 ? '/m' : ''}',
          style: const TextStyle(
            color: ColorName.colorBrilliance,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        leading: _checkboxImage(),
      ),
    );
  }
}

final class _MostPopularWidget extends StatelessWidget {
  const _MostPopularWidget();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.dynamicHeight(0.1),
      right: context.dynamicWidth(0.1),
      child: Assets.images.imgInappMostpopular.image(
        package: 'gen',
      ),
    );
  }
}
