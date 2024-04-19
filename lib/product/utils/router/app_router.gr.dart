// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i11;
import 'package:gen/gen.dart' as _i10;
import 'package:moonx/feature/home/view/home_view.dart' as _i1;
import 'package:moonx/feature/meditation/view/meditation_view.dart' as _i3;
import 'package:moonx/feature/meditation/view/widget/meditations_custom_view.dart'
    as _i4;
import 'package:moonx/feature/meditation_detail/meditation_detail_view.dart'
    as _i2;
import 'package:moonx/feature/nav_bar/nav_bar_view.dart' as _i5;
import 'package:moonx/feature/onboarding/view/onboarding_view.dart' as _i6;
import 'package:moonx/feature/profile/view/profile_view.dart' as _i7;
import 'package:moonx/feature/splash/view/splash_view.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    MeditationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MeditationDetailRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MeditationDetailView(
          sound: args.sound,
          key: args.key,
        ),
      );
    },
    MeditationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MeditationView(),
      );
    },
    MeditationsCustomRoute.name: (routeData) {
      final args = routeData.argsAs<MeditationsCustomRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MeditationsCustomView(
          soundLists: args.soundLists,
          key: args.key,
        ),
      );
    },
    NavBarRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NavBarView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingView(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileView(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MeditationDetailView]
class MeditationDetailRoute
    extends _i9.PageRouteInfo<MeditationDetailRouteArgs> {
  MeditationDetailRoute({
    required _i10.Sound sound,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          MeditationDetailRoute.name,
          args: MeditationDetailRouteArgs(
            sound: sound,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MeditationDetailRoute';

  static const _i9.PageInfo<MeditationDetailRouteArgs> page =
      _i9.PageInfo<MeditationDetailRouteArgs>(name);
}

class MeditationDetailRouteArgs {
  const MeditationDetailRouteArgs({
    required this.sound,
    this.key,
  });

  final _i10.Sound sound;

  final _i11.Key? key;

  @override
  String toString() {
    return 'MeditationDetailRouteArgs{sound: $sound, key: $key}';
  }
}

/// generated route for
/// [_i3.MeditationView]
class MeditationRoute extends _i9.PageRouteInfo<void> {
  const MeditationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MeditationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MeditationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MeditationsCustomView]
class MeditationsCustomRoute
    extends _i9.PageRouteInfo<MeditationsCustomRouteArgs> {
  MeditationsCustomRoute({
    required _i10.SoundCategory soundLists,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          MeditationsCustomRoute.name,
          args: MeditationsCustomRouteArgs(
            soundLists: soundLists,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MeditationsCustomRoute';

  static const _i9.PageInfo<MeditationsCustomRouteArgs> page =
      _i9.PageInfo<MeditationsCustomRouteArgs>(name);
}

class MeditationsCustomRouteArgs {
  const MeditationsCustomRouteArgs({
    required this.soundLists,
    this.key,
  });

  final _i10.SoundCategory soundLists;

  final _i11.Key? key;

  @override
  String toString() {
    return 'MeditationsCustomRouteArgs{soundLists: $soundLists, key: $key}';
  }
}

/// generated route for
/// [_i5.NavBarView]
class NavBarRoute extends _i9.PageRouteInfo<void> {
  const NavBarRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingView]
class OnboardingRoute extends _i9.PageRouteInfo<void> {
  const OnboardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfileView]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashView]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
