import 'package:flutter/widgets.dart';
import 'package:gen/gen.dart';

@immutable

/// Represents a sound category.
final class SoundLists {
  const SoundLists._();

  /// The list of sound categories.
  static final SoundCategory meditation = SoundCategory(
    title: 'Meditation',
    soundLists: [
      SoundList(
        categoryTitle: 'Feng Shui',
        sound: [
          Sound(
            title: 'Lorem Ipsum',
            subtitle: 'Lorem Ipsum',
            smallImage: Assets.images.imgMeditation.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground2.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.omerbalikciCoffeBlues.asset,
            voiceLength: 220,
          ),
          Sound(
            title: 'Lorem Ipsum',
            subtitle: 'Lorem Ipsum',
            smallImage: Assets.images.imgMeditation.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground2.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.adimiKalbineYaz.asset,
            voiceLength: 312,
          ),
        ],
      ),
      SoundList(
        categoryTitle: 'XYZ',
        sound: [
          Sound(
            title: 'Lorem Ipsum',
            subtitle: 'Lorem Ipsum',
            smallImage: Assets.images.imgMeditation2.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground1.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.birZamanlrFirtinalarEstirirdim.asset,
            voiceLength: 263,
          ),
          Sound(
            title: 'Lorem Ipsum',
            subtitle: 'Lorem Ipsum',
            smallImage: Assets.images.imgMeditation2.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground1.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.serdarOrtacSeytan.asset,
            voiceLength: 309,
          ),
        ],
      ),
    ],
  );

  /// The list of sound categories.
  static final SoundCategory music = SoundCategory(
    title: 'Yoga',
    soundLists: [
      SoundList(
        categoryTitle: 'Yoga',
        sound: [
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImage: Assets.images.imgMeditation.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground2.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.copoeirParnue.asset,
            voiceLength: 177,
          ),
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImage: Assets.images.imgMeditation.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground2.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.ladiesOfTheWood.asset,
            voiceLength: 150,
          ),
        ],
      ),
    ],
  );

  /// The list of sound categories.
  static final SoundCategory yoga = SoundCategory(
    title: 'Music',
    soundLists: [
      SoundList(
        categoryTitle: 'Mantras',
        sound: [
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImage: Assets.images.imgMusic1.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground3.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.tarkanAradaBir.asset,
            voiceLength: 259,
          ),
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImage: Assets.images.imgMusic2.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground3.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.holdingOutForAHero.asset,
            voiceLength: 284,
          ),
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImage: Assets.images.imgMusic3.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground3.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.mustafaSandalAyaBenzer.asset,
            voiceLength: 228,
          ),
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImage: Assets.images.imgMusic4.image(
              package: 'gen',
            ),
            bigImage: Assets.images.imgBackground3.image(
              package: 'gen',
            ),
            audioPath: SoundAssets.englishManInNewYork.asset,
            voiceLength: 267,
          ),
        ],
      ),
    ],
  );
}
