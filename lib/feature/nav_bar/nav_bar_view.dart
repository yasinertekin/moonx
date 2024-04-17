import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/enum/nav_bar_routes.dart';

@RoutePage()
final class NavBarView extends StatelessWidget {
  const NavBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: NavbarRoutes.values.map((e) => e.page).toList(),
      bottomNavigationBuilder: (_, tabsRouter) {
        final index = tabsRouter.activeIndex;
        final items = [
          _homeBarItem(index),
          _meditationBarItem(index),
          _profileBarItem(index),
        ];
        return BottomNavigationBar(
          currentIndex: index,
          onTap: tabsRouter.setActiveIndex,
          selectedItemColor: ColorName.colorThickBlue,
          unselectedItemColor: ColorName.colorMagnesium,
          backgroundColor: ColorName.colorDarkRift,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
          ),
          items: items,
        );
      },
    );
  }

  BottomNavigationBarItem _profileBarItem(int index) {
    return BottomNavigationBarItem(
      label: 'Profile',
      icon: Assets.icons.icSettings.svg(
        package: 'gen',
        color: index == 2 ? ColorName.colorThickBlue : ColorName.colorMagnesium,
      ),
    );
  }

  BottomNavigationBarItem _meditationBarItem(int index) {
    return BottomNavigationBarItem(
      label: 'Meditation',
      icon: Assets.icons.icMeditation.svg(
        package: 'gen',
        color: index == 1 ? ColorName.colorThickBlue : ColorName.colorMagnesium,
      ),
    );
  }

  BottomNavigationBarItem _homeBarItem(int index) {
    return BottomNavigationBarItem(
      label: 'Home',
      icon: Assets.icons.icHome.svg(
        package: 'gen',
        color: index == 0 ? ColorName.colorThickBlue : ColorName.colorMagnesium,
      ),
    );
  }
}
