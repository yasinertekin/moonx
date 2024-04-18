part of '../widget/medidations_custom_view.dart';

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
                    _SoundLength(
                      sound,
                    ),
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

final class _SoundLength extends StatelessWidget {
  const _SoundLength(
    this.sound,
  );

  final Sound sound;

  @override
  Widget build(BuildContext context) {
    final minutes = sound.voiceLength ~/ 60;
    final seconds = sound.voiceLength % 60;
    final formattedSeconds = seconds < 10 ? '0$seconds' : '$seconds';
    final formattedTime = '$minutes:$formattedSeconds';

    final formattedTimeWithoutDecimal = formattedTime.replaceAll('.0', '');

    return Text(
      formattedTimeWithoutDecimal,
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
      child: sound.smallImage,
    );
  }
}
