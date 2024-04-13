import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/src/asset/index.dart';

@immutable
final class LunarTips with EquatableMixin {
  final String title;

  final Image imagePath;

  final Color backgroundColor;

  final String? description;

  final bool isSelect;

  final Image bigImage;

  const LunarTips({
    required this.title,
    required this.imagePath,
    required this.backgroundColor,
    this.description,
    this.isSelect = false,
    required this.bigImage,
  });

  /// Lunar Tips List
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

  /// CopyWith
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
      ];
}
