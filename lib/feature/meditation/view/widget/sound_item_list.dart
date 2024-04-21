part of 'meditations_custom_view.dart';

final class _SoundItemList extends StatelessWidget {
  const _SoundItemList({
    required this.index,
    required this.soundLists,
  });

  final int index;
  final SoundCategory soundLists;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SoundCubit, SoundState, List<Sound>>(
      selector: (state) {
        if (soundLists == SoundLists.meditation) {
          return state.meditationList[index].sound;
        } else if (soundLists == SoundLists.yoga) {
          return state.sleepList[index].sound;
        } else {
          return state.musicList[index].sound;
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: context.dynamicHeight(
            0.15 * state.length,
          ),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 265,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.length,
            itemBuilder: (BuildContext context, int innerIndex) {
              final sound = state[innerIndex];
              return _SoundItem(
                sound: sound,
                index: innerIndex,
                soundList: soundLists,
              );
            },
          ),
        );
      },
    );
  }
}
