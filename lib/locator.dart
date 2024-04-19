import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:moonx/product/core/service/gemini_service.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/router/app_router.dart';

/// The Locator class provides a centralized location for managing
/// and accessing dependencies.
@immutable
abstract final class Locator {
  static final GetIt _getIt = GetIt.instance;

  /// Setup the locator by registering the necessary dependencies.
  static Future<void> setup() async {
    _getIt
      ..registerSingleton<UsersBloc>(UsersBloc())
      ..registerSingleton<AppRouter>(AppRouter());
  }

  /// Retrieves the instance of the UsersBloc.
  static UsersBloc get usersBloc => _getIt<UsersBloc>();

  /// Retrieves the instance of the AppRouter.
  static AppRouter get appRouter => _getIt<AppRouter>();

  /// Retrieves the instance of the IGeminiService.
  static IGeminiService get geminiService => _getIt<IGeminiService>();
}
