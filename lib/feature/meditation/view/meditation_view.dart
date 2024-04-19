import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/enum/meditation_tabs.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';
import 'package:moonx/product/widget/now_playing/now_playing_bar.dart';
import 'package:moonx/product/widget/now_playing/now_playing_slide_bar.dart';

part 'widget/meditation_tab_bar.dart';
part 'widget/meditation_tab_bar_view.dart';
part 'widget/meditation_view_background_image.dart';

@RoutePage()

/// The view for the meditation screen.
final class MeditationView extends StatelessWidget {
  /// Constructs a [MeditationView] object.
  const MeditationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _MeditationScaffold();
  }
}

final class _MeditationScaffold extends StatelessWidget {
  const _MeditationScaffold();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          _MeditationDetailBackgroundImage(),
          _MeditationTabBarView(),
          NowPlayingBar(),
          NowPlayingSlideBar(),
        ],
      ),
    );
  }
}
