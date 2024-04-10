import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moonx/feature/splash/splash_view.dart';
import 'package:moonx/product/core/initialize/project_initializer.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/theme/app_theme.dart';

Future<void> main() async {
  await ProjectInitializer.initialize();
  runApp(
    BlocProvider<UsersBloc>(
      create: (context) => UsersBloc(),
      child: const _MoonX(),
    ),
  );
}

final class _MoonX extends StatelessWidget {
  const _MoonX();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme().themeData,
      home: const SplashView(),
    );
  }
}
