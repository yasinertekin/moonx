part of 'meditations_custom_view.dart';

final class _SoundCategoryList extends StatelessWidget {
  const _SoundCategoryList({
    required this.widget,
  });

  final MeditationsCustomView widget;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SoundCubit, SoundState, List<SoundList>>(
      selector: (state) {
        if (widget.soundLists == SoundLists.meditation) {
          return state.meditationList;
        } else if (widget.soundLists == SoundLists.yoga) {
          return state.sleepList;
        } else {
          return state.musicList;
        }
      },
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (BuildContext context, int index) {
            final soundList = state[index];
            return Padding(
              padding: ProjectPadding.low.paddingAll,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SoundListCategoryTitle(soundLists: soundList),
                  _SoundItemList(soundLists: widget.soundLists, index: index),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
