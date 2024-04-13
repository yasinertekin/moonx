/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/colors.xml
  String get colors => 'assets/color/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_aquarius.svg
  SvgGenImage get icAquarius =>
      const SvgGenImage('assets/icons/ic_aquarius.svg');

  /// File path: assets/icons/ic_cancer.svg
  SvgGenImage get icCancer => const SvgGenImage('assets/icons/ic_cancer.svg');

  /// File path: assets/icons/ic_gemini.svg
  SvgGenImage get icGemini => const SvgGenImage('assets/icons/ic_gemini.svg');

  /// File path: assets/icons/ic_home.svg
  SvgGenImage get icHome => const SvgGenImage('assets/icons/ic_home.svg');

  /// File path: assets/icons/ic_leo.svg
  SvgGenImage get icLeo => const SvgGenImage('assets/icons/ic_leo.svg');

  /// File path: assets/icons/ic_libra.svg
  SvgGenImage get icLibra => const SvgGenImage('assets/icons/ic_libra.svg');

  /// File path: assets/icons/ic_meditation.svg
  SvgGenImage get icMeditation =>
      const SvgGenImage('assets/icons/ic_meditation.svg');

  /// File path: assets/icons/ic_moon.svg
  SvgGenImage get icMoon => const SvgGenImage('assets/icons/ic_moon.svg');

  /// File path: assets/icons/ic_pisces.svg
  SvgGenImage get icPisces => const SvgGenImage('assets/icons/ic_pisces.svg');

  /// File path: assets/icons/ic_sagittarius.svg
  SvgGenImage get icSagittarius =>
      const SvgGenImage('assets/icons/ic_sagittarius.svg');

  /// File path: assets/icons/ic_settings.svg
  SvgGenImage get icSettings =>
      const SvgGenImage('assets/icons/ic_settings.svg');

  /// File path: assets/icons/ic_taurus.svg
  SvgGenImage get icTaurus => const SvgGenImage('assets/icons/ic_taurus.svg');

  /// File path: assets/icons/ic_virgo.svg
  SvgGenImage get icVirgo => const SvgGenImage('assets/icons/ic_virgo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icAquarius,
        icCancer,
        icGemini,
        icHome,
        icLeo,
        icLibra,
        icMeditation,
        icMoon,
        icPisces,
        icSagittarius,
        icSettings,
        icTaurus,
        icVirgo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_background_onboarding2@3x.png
  AssetGenImage get imgBackgroundOnboarding23x =>
      const AssetGenImage('assets/images/img_background_onboarding2@3x.png');

  /// File path: assets/images/img_background_onboarding3@3x.png
  AssetGenImage get imgBackgroundOnboarding33x =>
      const AssetGenImage('assets/images/img_background_onboarding3@3x.png');

  /// File path: assets/images/img_home_background.png
  AssetGenImage get imgHomeBackground =>
      const AssetGenImage('assets/images/img_home_background.png');

  /// File path: assets/images/img_moon.png
  AssetGenImage get imgMoon =>
      const AssetGenImage('assets/images/img_moon.png');

  /// File path: assets/images/img_welcome.png
  AssetGenImage get imgWelcome =>
      const AssetGenImage('assets/images/img_welcome.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        imgBackgroundOnboarding23x,
        imgBackgroundOnboarding33x,
        imgHomeBackground,
        imgMoon,
        imgWelcome
      ];
}

class Assets {
  Assets._();

  static const $AssetsColorGen color = $AssetsColorGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
