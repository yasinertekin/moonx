import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moonx/feature/home/view/home_view.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

/// A mixin that provides common functionality for the HomeView widget.
mixin HomeViewMixin on State<HomeView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      if (!context.read<UsersBloc>().state.users.isPremium) {
        Locator.appRouter.push(const InAppRoute());
      }
    });
  }

  /// Shows in-apps based on the provided [context].
  void showInApps(BuildContext context) {}
}
