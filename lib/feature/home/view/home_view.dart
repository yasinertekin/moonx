import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:intl/intl.dart';
import 'package:moonx/feature/home/cubit/daily_horoscope/daily_horoscope_cubit.dart';
import 'package:moonx/feature/home/cubit/home_header/home_header_cubit.dart';
import 'package:moonx/feature/home/cubit/location/location_cubit.dart';
import 'package:moonx/feature/home/cubit/lunar_tips/lunar_tips_cubit.dart';
import 'package:moonx/feature/home/view/mixin/home_view_mixin.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/constants/string_constants.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/cache/users_state.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';
import 'package:moonx/product/widget/button/project_button.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';
import 'package:moonx/product/widget/loading/custom_progress_indicator.dart';
import 'package:moonx/product/widget/now_playing/now_playing_bar.dart';
import 'package:moonx/product/widget/now_playing/now_playing_slide_bar.dart';
import 'package:table_calendar/table_calendar.dart';

part 'mixin/daily_horoscope_mixin.dart';
part 'mixin/user_horoscope_icon_mixin.dart';
part 'widget/background_image/home_background_image.dart';
part 'widget/daily_horoscope/daily_horoscope.dart';
part 'widget/home_banner/home_banner.dart';
part 'widget/home_header_view/home_header_view.dart';
part 'widget/home_header_view/widget/date_time_button.dart';
part 'widget/home_header_view/widget/date_time_text.dart';
part 'widget/home_header_view/widget/home_calender_widget.dart';
part 'widget/home_header_view/widget/location_text.dart';
part 'widget/home_header_view/widget/location_widget.dart';
part 'widget/home_header_view/widget/moon_image.dart';
part 'widget/home_header_view/widget/time_based_text.dart';
part 'widget/home_header_view/widget/weather_text.dart';
part 'widget/lunar_tips/lunar_tips.dart';
part 'widget/lunar_tips/lunar_tips_page_view.dart';

@RoutePage()

/// Home view
final class HomeView extends StatefulWidget {
  /// Constructor
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

final class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      fit: StackFit.expand,
      children: [
        _HomeBackgroundImage(),
        _HomeScaffold(),
        NowPlayingBar(),
        NowPlayingSlideBar(),
      ],
    );
  }
}

final class _HomeScaffold extends StatelessWidget {
  const _HomeScaffold();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            EmptySizedBox(
              height: context.dynamicHeight(0.1),
            ),
            const _HomeHeaderView(),
            const _HomeBanner(),
            const _DailyHoroscope(),
            const _LunarTips(),
            const _LunarTipsPageView(),
          ],
        ),
      ),
    );
  }
}
