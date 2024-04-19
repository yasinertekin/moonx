import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/initialize/config/app_environment.dart';
import 'package:path_provider/path_provider.dart';

@immutable

/// Initialize
final class ProjectInitializer {
  const ProjectInitializer._();

  /// Initialize
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory(),
    );
    await Locator.setup();
    AppEnvironment.general();
  }
}
