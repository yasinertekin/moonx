import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

@RoutePage()
final class MeditationView extends StatelessWidget {
  const MeditationView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        MedidationsRoute(),
        MusicRoute(),
        YogaRoute(),
      ],
      builder: (context, child, controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              physics: const NeverScrollableScrollPhysics(),
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              dividerColor: Colors.transparent,
              tabAlignment: TabAlignment.fill,
              controller: controller,
              tabs: const [
                Tab(
                  text: 'Medidation',
                ),
                Tab(
                  text: 'Yoga',
                ),
                Tab(
                  text: 'Music',
                ),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }
}
