import 'package:flutter/material.dart';

/// ProjectRadius Enum
enum ProjectRadius {
  /// Small radius 15 px
  small(15),

  /// Medium radius 30 px
  medium(30),

  /// Large radius 45 px
  large(45);

  final double _value;

  /// Constructor
  // ignore: sort_constructors_first
  const ProjectRadius(this._value);

  BorderRadius get _borderRadius => BorderRadius.circular(_value);

  /// BorderRadius Getter
  BorderRadius get borderRadius => _borderRadius;
}
