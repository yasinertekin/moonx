import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/initialize/project_initializer.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/theme/app_theme.dart';

Future<void> main() async {
  await ProjectInitializer.initialize();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<UsersBloc>(
          create: (context) => Locator.usersBloc,
        ),
      ],
      child: const _MoonX(),
    ),
  );
}

final class _MoonX extends StatelessWidget {
  const _MoonX();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme().themeData,
      routerDelegate: Locator.appRouter.delegate(),
      routeInformationParser: Locator.appRouter.defaultRouteParser(),
    );
  }
}
