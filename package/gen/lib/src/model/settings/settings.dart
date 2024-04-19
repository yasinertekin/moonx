import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:gen/src/asset/assets.gen.dart';

@immutable
final class Settings extends Equatable {
  final String title;

  final Image image;

  const Settings({required this.title, required this.image});

  @override
  List<Object?> get props => [title, image];
}

@immutable
final class SettingsList {
  const SettingsList._();
  static final List<Settings> settings = <Settings>[
    Settings(
        title: 'Privacy Policy',
        image: Assets.images.imgPrivacy.image(
          package: 'gen',
        )),
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
