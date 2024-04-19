import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/meditation/cubit/sound_cubit.dart';

/// A widget that displays the slide bar for the now playing sound.
final class NowPlayingSlideBar extends StatelessWidget {
  /// Constructs a [NowPlayingSlideBar] object.
  const NowPlayingSlideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoundCubit, SoundState>(
      builder: (context, state) {
        if (state.status == SoundStatus.playing ||
            state.status == SoundStatus.paused) {
          return Positioned(
            bottom: -22,
            left: -23,
            right: -25,
            child: SliderTheme(
              data: SliderThemeData(
                trackHeight: 1,
                thumbShape: SliderComponentShape.noThumb,
              ),
              child: Slider(
                thumbColor: Colors.transparent,
                activeColor: ColorName.colorThickBlue,
                inactiveColor: ColorName.colorMercury,
                secondaryActiveColor: ColorName.colorThickBlue,
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.transparent,
                ),
                value: state.timer.inSeconds.toDouble(),
                max: Duration(
                  seconds: context
                      .read<SoundCubit>()
                      .state
                      .sound!
                      .voiceLength
                      .toInt(),
                ).inSeconds.toDouble(),
                onChanged: (value) {},
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
