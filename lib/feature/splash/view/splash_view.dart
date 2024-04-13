import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

part 'mixin/splash_view_mixin.dart';
part 'widget/loading_widget.dart';

/// SplashView
@RoutePage()
final class SplashView extends StatefulWidget {
  /// SplashView
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

final class _SplashViewState extends State<SplashView> with _SplashViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _LoadingWidget(),
    );
  }
}
