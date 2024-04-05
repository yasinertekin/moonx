import 'package:flutter/material.dart';

@immutable
final class Onboarding {
  final String? title;

  final String description;

  final String imageUrl;

  const Onboarding({
    this.title,
    required this.description,
    required this.imageUrl,
  });
}
