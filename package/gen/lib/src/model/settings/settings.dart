import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:gen/src/asset/assets.gen.dart';

/// Represents the settings of the application.
@immutable
final class Settings extends Equatable {
  /// Creates a new instance of the [Settings] class.
  ///
  /// The [title] parameter is required and represents
  /// the title of the settings.
  /// The [image] parameter is required and represents
  ///  the image associated with the settings.
  const Settings({required this.title, required this.image});

  /// The title of the settings.
  final String title;

  /// The image associated with the settings.
  final Image image;

  @override
  List<Object?> get props => [title, image];
}

/// Represents a list of settings.
@immutable
final class SettingsList {
  const SettingsList._();

  /// A list of settings.
  static final List<Settings> settings = <Settings>[
    Settings(
      title: 'Privacy Policy',
      image: Assets.images.imgPrivacy.image(
        package: 'gen',
      ),
    ),
    Settings(
      title: 'Term of Use',
      image: Assets.images.imgTerms.image(
        package: 'gen',
      ),
    ),
    Settings(
      title: 'Restore Purchase',
      image: Assets.images.imgRestore.image(
        package: 'gen',
      ),
    ),
    Settings(
      title: 'Help Us',
      image: Assets.images.imgHelp.image(
        package: 'gen',
      ),
    ),
    Settings(
      title: 'Rate Us',
      image: Assets.images.imgRate.image(
        package: 'gen',
      ),
    ),
  ];
}
