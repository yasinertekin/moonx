import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/onboarding/view/onboarding_view.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/cache/users_state.dart';

/// SplashView
final class SplashView extends StatelessWidget {
  /// SplashView
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersBloc, UsersState, Users>(
      selector: (state) => state.users,
      builder: (context, users) {
        if (users.birthDate.isEmpty) {
          return const OnboardingView();
        } else {
          return const OnboardingView();
        }
      },
    );
  }
}
