import 'package:flutter/material.dart';

@immutable

/// Onboarding Model
final class Onboarding {
  /// Constructor
  const Onboarding({
    required this.description,
    required this.imageUrl,
    this.title,
  });

  /// title of the onboarding
  final String? title;

  /// description of the onboarding
  final String description;

  /// image url of the onboarding
  final String imageUrl;

  /// Onboarding List 3 items and Lorem Ipsum
  static final List<Onboarding> onboardingList = <Onboarding>[
    const Onboarding(
      title: 'Welcome to our store',
      description:
          'We are here to help you find the best products for your needs',
      imageUrl: 'assets/images/onboarding1.png',
    ),
    const Onboarding(
      description: 'We have a wide range of products for you to choose from',
      imageUrl: 'assets/images/onboarding2.png',
    ),
    const Onboarding(
      title: 'Get the best deals',
      description:
          'We offer the best deals for our customers. Check out our products',
      imageUrl: 'assets/images/onboarding3.png',
    ),
  ];
}
