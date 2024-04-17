import 'package:auto_route/auto_route.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// AppRouter
final class AppRouter extends $AppRouter {
  @override
  List<AdaptiveRoute> get routes => [
        AdaptiveRoute(
          page: NavBarRoute.page,
          children: [
            AdaptiveRoute(
              page: HomeRoute.page,
            ),
            AdaptiveRoute(
              page: MeditationRoute.page,
              children: [
                AdaptiveRoute(
                  page: MedidationsCustomRoute.page,
                ),
              ],
            ),
            AdaptiveRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
        AdaptiveRoute(
          page: MedidationDetailRoute.page,
        ),
        AdaptiveRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AdaptiveRoute(
          page: OnboardingRoute.page,
        ),
      ];
}
