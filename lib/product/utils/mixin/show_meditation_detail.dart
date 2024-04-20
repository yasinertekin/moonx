import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/meditation_detail/meditation_detail_view.dart';

/// A mixin that provides a method to show the details of a meditation.
base mixin ShowMeditationDetailMixin {
  /// Shows the details of a meditation in a modal bottom sheet.
  ///
  /// The [context] parameter is the build context.
  /// The [sound] parameter is the sound object representing the meditation.
  void showMeditationDetail(BuildContext context, Sound sound) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      scrollControlDisabledMaxHeightRatio: 1,
      context: context,
      builder: (BuildContext context) {
        return MeditationDetailView(
          sound: sound,
        );
      },
    );
  }
}
