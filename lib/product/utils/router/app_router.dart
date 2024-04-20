import 'package:auto_route/auto_route.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// AppRouter
final class AppRouter extends $AppRouter {
  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          page: NavBarRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            AdaptiveRoute(
              page: HomeRoute.page,
            ),
            CustomRoute(
              page: MeditationRoute.page,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              children: [
                CustomRoute(
                  page: MeditationsCustomRoute.page,
                ),
              ],
            ),
            AdaptiveRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          page: MeditationDetailRoute.page,
        ),
        CustomRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        CustomRoute(
          page: InAppRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          page: OnboardingRoute.page,
        ),
      ];
}
