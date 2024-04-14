import 'package:flutter/material.dart';

@immutable

/// String Constants
final class StringConstants {
  const StringConstants._();

  /// Home View
  ///
  /// Home Banner
  static const String whatIsForToday = 'What is for Today?';
  static const String yourDailyHoroscope = 'Your Daily Horoscope';

  /// Home Header View
  ///
  /// Location Text
  static const String loadingLocationInformation =
      'Loading Location Information...';
  static const String locationPermissionDenied = 'Location Permission Denied';
  static const String locationNotFound = 'Location Not Found';

  /// Time Based Text
  static const String goodMorning = 'Good Morning!';
  static const String goodEvening = 'Good Evening!';

  /// Project Button
  static const String next = 'Next';
}
