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
import 'package:moonx/product/utils/mixin/format_timer.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';

@RoutePage()
final class MedidationDetailView extends StatelessWidget {
  const MedidationDetailView({
    required this.sound,
    super.key,
  });

  final Sound sound;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SoundCubit>(context);

    return Scaffold(
      body: Stack(
        children: [
          _MedidationDetailBackgroundImage(sound: sound),
          const _BackToMedidation(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _SoundTitle(sound: sound),
              _MedidationPlayer(sound: sound, bloc: bloc),
              EmptySizedBox(
                height: context.dynamicHeight(0.1),
              ),
            ],
          ),
        ],
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
    return Text(
      sound.title,
      style: const TextStyle(
        color: ColorName.colorEmptiness,
        fontSize: 20,
      ),
    );
  }
}

final class _MedidationDetailBackgroundImage extends StatelessWidget {
  const _MedidationDetailBackgroundImage({
    required this.sound,
  });

  final Sound sound;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: sound.bigImage,
    );
  }
}

final class _BackToMedidation extends StatelessWidget {
  const _BackToMedidation();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: ProjectPadding.low.paddingAll,
        child: AutoLeadingButton(
          builder: (context, leadingType, action) {
            return GestureDetector(
              onTap: () {
                Locator.appRouter.back();
              },
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Center(
                  child: Assets.images.imgBtnDropDown.image(
                    package: 'gen',
                  ),
                ),
              ).asGlass(
                clipBorderRadius: ProjectRadius.medium.borderRadius,
              ),
            );
          },
        ),
      ),
    );
  }
}

final class _MedidationPlayer extends StatelessWidget {
  const _MedidationPlayer({
    required this.sound,
    required this.bloc,
  });

  final Sound sound;
  final SoundCubit bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoundCubit, SoundState>(
      builder: (context, state) {
        return Column(
          children: [
            _MedidationSlayer(
              sound: sound,
              state: state,
            ),
            Column(
              children: [
                _SoundInfo(sound: sound, state: state),
                const EmptySizedBox(),
                _SoundOperation(
                  sound: sound,
                  bloc: bloc,
                  state: state,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

final class _SoundOperation extends StatelessWidget {
  const _SoundOperation({
    required this.sound,
    required this.state,
    required this.bloc,
  });

  final Sound sound;
  final SoundCubit bloc;
  final SoundState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              context.read<SoundCubit>().stopSound();
            },
            child: Assets.images.btnRefreshPlaylist.image(
              package: 'gen',
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Assets.images.btnBackPlaylist.image(
              package: 'gen',
            ),
          ),
          GestureDetector(
            onTap: () {
              if (state.status == SoundStatus.playing &&
                  state.sound == sound &&
                  state.status != SoundStatus.paused) {
                context.read<SoundCubit>().pauseSound();
                bloc.updateTimer();
              } else {
                context.read<SoundCubit>().playSound(sound);
                bloc.updateTimer();
              }
            },
            child: state.status == SoundStatus.playing && state.sound == sound
                ? Assets.images.imgBtnPauseButton.image(package: 'gen')
                : Assets.images.btnPlayPlaylist.image(
                    package: 'gen',
                  ),
          ),
          Assets.images.btnNextPlaylist.image(
            package: 'gen',
          ),
          Assets.images.imgFav.image(
            package: 'gen',
          ),
        ],
      ),
    );
  }
}

final class _MedidationSlayer extends StatelessWidget {
  const _MedidationSlayer({
    required this.sound,
    required this.state,
  });

  final Sound sound;
  final SoundState state;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: ColorName.colorThickBlue,
      inactiveColor: ColorName.colorFiftiethShadeOfGrey,
      value: sound == state.sound ? state.timer.inSeconds.toDouble() : 0,
      max: Duration(
        seconds: sound.voiceLength.toInt(),
      ).inSeconds.toDouble(),
      onChanged: (value) {
        context.read<SoundCubit>().seekTo(
              Duration(seconds: value.toInt()),
            );
        if (value == sound.voiceLength.toInt()) {
          context.read<SoundCubit>().stopSound();
        }
      },
    );
  }
}

final class _SoundInfo extends StatelessWidget with FormatTimerMixin {
  const _SoundInfo({
    required this.sound,
    required this.state,
  });

  final Sound sound;
  final SoundState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        children: [
          Text(
            sound == state.sound ? formatTimer(state.timer) : '00:00',
            style: context.theme.textTheme.titleLarge!.copyWith(
              color: ColorName.colorMagnesium,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          Text(
            formatTimer(
              Duration(
                seconds: sound.voiceLength.toInt(),
              ),
            ),
            style: context.theme.textTheme.titleLarge!.copyWith(
              color: ColorName.colorMagnesium,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
