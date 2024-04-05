import 'package:flutter/material.dart';

@immutable

/// Onboarding Model
final class Onboarding {
  /// Constructor
  const Onboarding({
    required this.description,
    required this.image,
    this.title,
  });

  /// title of the onboarding
  final String? title;

  /// description of the onboarding
  final String description;

  /// image url of the onboarding
  final Image image;
}
