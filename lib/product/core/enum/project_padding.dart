import 'package:flutter/material.dart';

/// Project Padding
enum ProjectPadding {
  /// Low padding 8 px
  low(8),

  /// Medium padding 16 px
  medium(16),

  /// High padding 24 px
  high(24);

  /// Padding value
  final double _value;

  /// Constructor
  // ignore: sort_constructors_first
  const ProjectPadding(this._value);

  /// Padding all
  EdgeInsets get _paddingAll => EdgeInsets.all(_value);

  /// Padding All Getter
  EdgeInsets get paddingAll => _paddingAll;

  /// Padding horizontal
  EdgeInsets get _paddingHorizontal => EdgeInsets.symmetric(horizontal: _value);

  /// Padding Horizontal Getter
  EdgeInsets get paddingHorizontal => _paddingHorizontal;

  /// Padding vertical
  EdgeInsets get _paddingVertical => EdgeInsets.symmetric(vertical: _value);

  /// Padding Vertical Getter
  EdgeInsets get paddingVertical => _paddingVertical;

  /// Padding only Left
  EdgeInsetsGeometry get _paddingOnlyLeft => EdgeInsets.only(left: _value);

  /// Padding Only Left Getter
  EdgeInsetsGeometry get paddingOnly => _paddingOnlyLeft;

  /// Padding only right
  EdgeInsetsGeometry get _paddingOnlyRight => EdgeInsets.only(right: _value);

  /// Padding Only Right Getter
  EdgeInsetsGeometry get paddingOnlyRight => _paddingOnlyRight;

  /// Padding only top
  EdgeInsetsGeometry get _paddingOnlyTop => EdgeInsets.only(top: _value);

  /// Padding Only Top Getter
  EdgeInsetsGeometry get paddingOnlyTop => _paddingOnlyTop;

  /// Padding only bottom
  EdgeInsetsGeometry get _paddingOnlyBottom => EdgeInsets.only(bottom: _value);

  /// Padding Only Bottom Getter
  EdgeInsetsGeometry get paddingOnlyBottom => _paddingOnlyBottom;
}
