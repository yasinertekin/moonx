import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Represents a horoscope model.
@immutable
final class HoroscopeModel {
  /// Creates a new instance of [HoroscopeModel].
  ///
  /// The [name] parameter is required and represents the name of the horoscope.
  /// The [image] parameter is required and represents
  ///  the image of the horoscope.
  const HoroscopeModel({required this.name, required this.image});

  /// The name of the horoscope.
  final String name;

  /// The image of the horoscope.
  final SvgPicture image;
}
