// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:moonx/feature/home/view/home_view.dart' as _i1;
import 'package:moonx/feature/meditation/view/medidation_view.dart' as _i3;
import 'package:moonx/feature/meditation/view/widget/medidations_view.dart'
    as _i2;
import 'package:moonx/feature/meditation/view/widget/music_view.dart' as _i4;
import 'package:moonx/feature/meditation/view/widget/yoga_view.dart' as _i9;
import 'package:moonx/feature/nav_bar/nav_bar_view.dart' as _i5;
import 'package:moonx/feature/onboarding/view/onboarding_view.dart' as _i6;
import 'package:moonx/feature/profile/view/profile_view.dart' as _i7;
import 'package:moonx/feature/splash/view/splash_view.dart' as _i8;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    MedidationsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MedidationsView(),
      );
    },
    MeditationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MeditationView(),
      );
    },
    MusicRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MusicView(),
      );
    },
    NavBarRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NavBarView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingView(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileView(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashView(),
      );
    },
    YogaRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.YogaView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MedidationsView]
class MedidationsRoute extends _i10.PageRouteInfo<void> {
  const MedidationsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MedidationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MedidationsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MeditationView]
class MeditationRoute extends _i10.PageRouteInfo<void> {
  const MeditationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MeditationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MeditationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MusicView]
class MusicRoute extends _i10.PageRouteInfo<void> {
  const MusicRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MusicRoute.name,
          initialChildren: children,
        );

  static const String name = 'MusicRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NavBarView]
class NavBarRoute extends _i10.PageRouteInfo<void> {
  const NavBarRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingView]
class OnboardingRoute extends _i10.PageRouteInfo<void> {
  const OnboardingRoute({List<_i10.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfileView]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashView]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.YogaView]
class YogaRoute extends _i10.PageRouteInfo<void> {
  const YogaRoute({List<_i10.PageRouteInfo>? children})
      : super(
          YogaRoute.name,
          initialChildren: children,
        );

  static const String name = 'YogaRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
