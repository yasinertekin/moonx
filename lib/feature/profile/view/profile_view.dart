import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/constants/string_constants.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';
import 'package:moonx/product/widget/now_playing/now_playing_bar.dart';
import 'package:moonx/product/widget/now_playing/now_playing_slide_bar.dart';

part 'widget/profile_app_bar.dart';
part 'widget/profile_banner.dart';
part 'widget/profile_settings_list.dart';

@RoutePage()

/// The view for the profile screen.
final class ProfileView extends StatelessWidget {
  /// Constructs a [ProfileView] object.
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.colorRavensCoat,
      appBar: _ProfileAppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          _ProfileViewBody(),
          NowPlayingBar(),
          NowPlayingSlideBar(),
        ],
      ),
    );
  }
}

final class _ProfileViewBody extends StatelessWidget {
  const _ProfileViewBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const _ProfileBanner(),
        EmptySizedBox(
          height: context.dynamicHeight(0.03),
        ),
        const _ProfileSettingsList(),
      ],
    );
  }
}
