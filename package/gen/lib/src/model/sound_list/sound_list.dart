import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:gen/src/index.dart';

@immutable
final class SoundList extends Equatable {
  final String categoryTitle;
  final List<Sound> sound;

  const SoundList({
    required this.categoryTitle,
    required this.sound,
  });

  @override
  List<Object> get props => [categoryTitle, sound];

  /// Copy with new values
  SoundList copyWith({
    String? categoryTitle,
    List<Sound>? sound,
  }) {
    return SoundList(
      categoryTitle: categoryTitle ?? this.categoryTitle,
      sound: sound ?? this.sound,
    );
  }
}

@immutable
final class SoundLists {
  const SoundLists._();
  static SoundCategory soundCategory = SoundCategory(
    title: 'Medidation',
    soundLists: [
      SoundList(
        categoryTitle: 'Feng Shui',
        sound: [
          Sound(
            title: 'Lorem Ipsum',
            subtitle: 'Lorem Ipsum',
            smallImageUrl: Assets.images.imgMeditation.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.omerbalikciCoffeBlues.asset,
            voiceLength: '2:34',
          ),
          Sound(
            title: 'Lorem Ipsum',
            subtitle: 'Lorem Ipsum',
            smallImageUrl: Assets.images.imgMeditation.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.omerbalikciCoffeBlues.asset,
            voiceLength: '2:34',
          ),
        ],
      ),
      SoundList(
        categoryTitle: 'XYZ',
        sound: [
          Sound(
            title: 'Lorem Ipsum',
            subtitle: 'Lorem Ipsum',
            smallImageUrl: Assets.images.imgMeditation2.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.omerbalikciCoffeBlues.asset,
            voiceLength: '2:34',
          ),
          Sound(
            title: 'Lorem Ipsum',
            subtitle: 'Lorem Ipsum',
            smallImageUrl: Assets.images.imgMeditation2.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.serdarOrtacSeytan.asset,
            voiceLength: '2:34',
          ),
        ],
      ),
    ],
  );
  static SoundCategory yoga = SoundCategory(
    title: 'Yoga',
    soundLists: [
      SoundList(
        categoryTitle: 'Yoga',
        sound: [
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImageUrl: Assets.images.imgMeditation.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.serdarOrtacSeytan.asset,
            voiceLength: '',
          ),
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImageUrl: Assets.images.imgMeditation.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.omerbalikciCoffeBlues.asset,
            voiceLength: '',
          ),
        ],
      ),
    ],
  );
  static SoundCategory music = SoundCategory(
    title: 'Music',
    soundLists: [
      SoundList(
        categoryTitle: 'Mantras',
        sound: [
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImageUrl: Assets.images.imgMusic1.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.serdarOrtacSeytan.asset,
            voiceLength: '',
          ),
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImageUrl: Assets.images.imgMusic2.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.mustafaSandalAyaBenzer.asset,
            voiceLength: '',
          ),
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImageUrl: Assets.images.imgMusic3.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.mustafaSandalAyaBenzer.asset,
            voiceLength: '',
          ),
          Sound(
            title: 'Title',
            subtitle: 'Subtitle',
            smallImageUrl: Assets.images.imgMusic4.image(
              package: 'gen',
            ),
            image: '',
            audioPath: SoundAssets.mustafaSandalAyaBenzer.asset,
            voiceLength: '',
          ),
        ],
      ),
    ],
  );
}

final class SoundCategory {
  final String title;
  final List<SoundList> soundLists;

  const SoundCategory({
    required this.title,
    required this.soundLists,
  });

  /// Copy with new values
  SoundCategory copyWith({
    String? title,
    List<SoundList>? soundLists,
  }) {
    return SoundCategory(
      title: title ?? this.title,
      soundLists: soundLists ?? this.soundLists,
    );
  }
}
