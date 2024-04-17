import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:glass/glass.dart';
import 'package:moonx/feature/meditation/cubit/sound_cubit.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';

@RoutePage()
final class MedidationsCustomView extends StatefulWidget {
  const MedidationsCustomView({
    required this.soundLists,
    super.key,
  });

  final SoundCategory soundLists;

  @override
  State<MedidationsCustomView> createState() => _MedidationsViewState();
}

final class _MedidationsViewState extends State<MedidationsCustomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _SoundCategoryList(
        widget: widget,
      ),
    );
  }
}

final class _SoundCategoryList extends StatelessWidget {
  const _SoundCategoryList({
    required this.widget,
  });

  final MedidationsCustomView widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocSelector<SoundCubit, SoundState, List<SoundList>>(
        selector: (state) {
          if (widget.soundLists == SoundLists.soundCategory) {
            return state.medidationlist;
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
                    const EmptySizedBox(),
                    _SoundItemList(soundLists: widget.soundLists, index: index),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

final class _SoundListCategoryTitle extends StatelessWidget {
  const _SoundListCategoryTitle({
    required this.soundLists,
  });

  final SoundList soundLists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingOnlyLeft,
      child: Text(
        soundLists.categoryTitle,
        style: context.theme.textTheme.titleLarge!.copyWith(
          color: ColorName.colorEmptiness,
          fontSize: 20,
        ),
      ),
    );
  }
}

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
        if (soundLists == SoundLists.soundCategory) {
          return state.medidationlist[index].sound;
        } else if (soundLists == SoundLists.yoga) {
          return state.sleepList[index].sound;
        } else {
          return state.musicList[index].sound;
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: state.length * 200.0,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 200,
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

final class _SoundItem extends StatelessWidget {
  const _SoundItem({
    required this.sound,
    required this.index,
    required this.soundList,
  });

  final Sound sound;
  final int index;
  final SoundCategory soundList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Locator.appRouter.push(
          MedidationDetailRoute(
            sound: sound,
            soundLists: soundList,
          ),
        );
      },
      child: Stack(
        children: [
          _SoundsImage(sound: sound),
          _SoundItemBottom(
            sound: sound,
            index: index,
          ),
        ],
      ),
    );
  }
}

final class _SoundItemBottom extends StatelessWidget {
  const _SoundItemBottom({
    required this.sound,
    required this.index,
  });

  final Sound sound;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        height: context.dynamicHeight(0.07),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const EmptySizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _SoundTitle(sound: sound),
                    const Spacer(),
                    _PlayButton(
                      sound: sound,
                      index: index,
                    ),
                  ],
                ),
                Row(
                  children: [
                    _SoundSubtitle(sound: sound),
                    const Spacer(),
                    const _SoundLength(),
                    const Spacer(
                      flex: 5,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ).asGlass(
          clipBorderRadius: ProjectRadius.small.bottomLeftRightBorderRadius,
        ),
      ),
    );
  }
}

final class _PlayButton extends StatefulWidget {
  const _PlayButton({
    required this.sound,
    required this.index,
  });

  final Sound sound;
  final int index;

  @override
  State<_PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<_PlayButton> {
  @override
  void dispose() {
    super.dispose();
    context.read<SoundCubit>().close();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SoundCubit>(context);
    return BlocBuilder<SoundCubit, SoundState>(
      builder: (context, state) {
        return IconButton(
          icon: Icon(
            state.status == SoundStatus.playing && state.sound == widget.sound
                ? Icons.pause
                : Icons.play_arrow,
            color: ColorName.colorEmptiness,
          ),
          onPressed: () {
            if (state.status == SoundStatus.playing &&
                state.sound == widget.sound) {
              context.read<SoundCubit>().pauseSound();
              bloc.updateTimer();
            } else {
              context.read<SoundCubit>().playSound(widget.sound);
              bloc.updateTimer();
            }
          },
        );
      },
    );
  }
}

final class _SoundLength extends StatelessWidget {
  const _SoundLength();

  @override
  Widget build(BuildContext context) {
    return Text(
      '2:34',
      style: context.theme.textTheme.titleLarge!.copyWith(
        color: ColorName.colorEmptiness,
        fontSize: 10,
      ),
    );
  }
}

final class _SoundSubtitle extends StatelessWidget {
  const _SoundSubtitle({
    required this.sound,
  });

  final Sound sound;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingOnlyLeft,
      child: Text(
        sound.subtitle,
        style: context.theme.textTheme.titleLarge!.copyWith(
          color: ColorName.colorEmptiness,
          fontSize: 10,
        ),
      ),
    );
  }
}

final class _SoundTitle extends StatelessWidget {
  const _SoundTitle({
    required this.sound,
  });

  final Sound sound;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingOnlyTopLeft,
      child: Text(
        sound.title,
        style: context.theme.textTheme.titleLarge!.copyWith(
          color: ColorName.colorEmptiness,
          fontSize: 13,
        ),
      ),
    );
  }
}

final class _SoundsImage extends StatelessWidget {
  const _SoundsImage({
    required this.sound,
  });

  final Sound sound;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: sound.smallImageUrl,
    );
  }
}
