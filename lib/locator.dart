import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:moonx/product/core/service/gemini_service.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/router/app_router.dart';

@immutable
abstract final class Locator {
  static final GetIt _getIt = GetIt.instance;

  /// Setup the locator
  static Future<void> setup() async {
    _getIt
      ..registerSingleton<UsersBloc>(UsersBloc())
      ..registerSingleton<AppRouter>(AppRouter());
  }

  static UsersBloc get usersBloc => _getIt<UsersBloc>();
  static AppRouter get appRouter => _getIt<AppRouter>();

  /// Gemini service
  static IGeminiService get geminiService => _getIt<IGeminiService>();
}
