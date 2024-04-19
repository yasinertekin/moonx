import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/src/asset/index.dart';

/// Represents a Lunar Tip.
@immutable
class LunarTips with EquatableMixin {
  /// Constructs a LunarTips instance.
  const LunarTips({
    this.title,
    this.imagePath,
    this.backgroundColor,
    this.description,
    this.isSelect = false,
    this.bigImage,
  });

  /// The title of the Lunar Tip.
  final String? title;

  /// The image associated with the Lunar Tip.
  final Image? imagePath;

  /// The background color of the Lunar Tip.
  final Color? backgroundColor;

  /// The description of the Lunar Tip.
  final String? description;

  /// Indicates whether the Lunar Tip is selected or not.
  final bool isSelect;

  /// The big image associated with the Lunar Tip.
  final Image? bigImage;

  /// Returns a list of LunarTips.
  static List<LunarTips> get lunarTipsList => [
        LunarTips(
          title: 'Business',
          imagePath: Assets.images.imgBusiness.image(
            package: 'gen',
          ),
          backgroundColor: ColorName.colorGloomyPurple,
          bigImage: Assets.images.imgBusiness2.image(
            package: 'gen',
          ),
        ),
        LunarTips(
          title: 'Food',
          imagePath: Assets.images.imgFood.image(
            package: 'gen',
          ),
          backgroundColor: ColorName.colorGluttony,
          bigImage: Assets.images.imgFood2.image(
            package: 'gen',
          ),
        ),
        LunarTips(
          title: 'Relations',
          bigImage: Assets.images.imgRelations2.image(
            package: 'gen',
          ),
          imagePath: Assets.images.imgRelations.image(
            package: 'gen',
          ),
          backgroundColor: ColorName.colorThickBlue,
        ),
      ];

  /// Creates a copy of this LunarTips instance with the given
  /// fields replaced with the new values.
  LunarTips copyWith({
    String? title,
    Image? imagePath,
    Color? backgroundColor,
    String? description,
    bool? isSelect,
    Image? bigImage,
  }) {
    return LunarTips(
      bigImage: bigImage ?? this.bigImage,
      title: title ?? this.title,
      imagePath: imagePath ?? this.imagePath,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      description: description ?? this.description,
      isSelect: isSelect ?? this.isSelect,
    );
  }

  @override
  List<Object?> get props => [
        title,
        imagePath,
        backgroundColor,
        description,
        isSelect,
        bigImage,
      ];
}
