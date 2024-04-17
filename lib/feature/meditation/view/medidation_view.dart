import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/meditation/cubit/medidation_cubit.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

part 'widget/medidation_tab_bar.dart';
part 'widget/medidation_tab_bar_view.dart';
part 'widget/medidation_view_background_image.dart';

@RoutePage()
final class MeditationView extends StatelessWidget {
  const MeditationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _MedidationScaffold();
  }
}

final class _MedidationScaffold extends StatelessWidget {
  const _MedidationScaffold();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          _MedidationViewBackgroundImage(),
          Column(
            children: [
              _MedidationTabBarView(),
            ],
          ),
        ],
      ),
    );
  }
}
