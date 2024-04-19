import 'package:auto_route/auto_route.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

/// Enum representing the routes for the navigation bar.
enum NavbarRoutes {
  /// Represents the home route.
  home(HomeRoute()),

  /// Represents the meditation route.
  meditation(MeditationRoute()),

  /// Represents the profile route.
  profile(
    ProfileRoute(),
  );

  /// The page associated with the route.
  final PageRouteInfo page;

  /// Constructs a [NavbarRoutes] with the given [page].
  ///
  // ignore: sort_constructors_first
  const NavbarRoutes(this.page);
}
