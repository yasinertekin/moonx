import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/meditation/cubit/sound_cubit.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/utils/mixin/show_meditation_detail.dart';

/// A bar that shows the currently playing meditation.
final class NowPlayingBar extends StatelessWidget
    with ShowMeditationDetailMixin {
  /// Constructs a [NowPlayingBar] object.
  const NowPlayingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () => showMeditationDetail(
          context,
          context.read<SoundCubit>().state.sound!,
        ),
        child: SizedBox(
          height: 55,
          child: BlocBuilder<SoundCubit, SoundState>(
            builder: (context, state) {
              if (state.status == SoundStatus.playing ||
                  state.status == SoundStatus.paused) {
                return Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: ProjectRadius.small.borderRadius,
                  ),
                  color: ColorName.colorTheEnd,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (state.status == SoundStatus.playing) {
                            context.read<SoundCubit>().pauseSound();
                          } else {
                            context.read<SoundCubit>().resumeSound();
                          }
                        },
                        child: state.status == SoundStatus.playing
                            ? Assets.images.imgBtnPause2.image(
                                package: 'gen',
                              )
                            : Assets.images.imgBtnPlay2.image(
                                package: 'gen',
                              ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.sound?.title ?? '',
                            style: context.theme.textTheme.titleLarge?.copyWith(
                              fontSize: 12,
                              color: ColorName.colorMercury,
                            ),
                          ),
                          Text(
                            state.sound?.subtitle ?? '',
                            style: context.theme.textTheme.titleLarge?.copyWith(
                              fontSize: 10,
                              color: ColorName.colorMercury,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          context.read<SoundCubit>().stopSound();
                        },
                        child: Assets.images.imgBtnClose.image(
                          package: 'gen',
                        ),
                      ),
                    ],
                  ),
                );
              }

              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
