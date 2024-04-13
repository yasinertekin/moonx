import 'package:auto_route/auto_route.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

enum NavbarRoutes {
  home(HomeRoute()),
  meditation(MeditationRoute()),
  profile(
    ProfileRoute(),
  );

  final PageRouteInfo page;

  const NavbarRoutes(this.page);
}
