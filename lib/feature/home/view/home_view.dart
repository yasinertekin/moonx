import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:intl/intl.dart';
import 'package:moonx/feature/home/cubit/daily_horoscope/dialy_horoscope_cubit.dart';
import 'package:moonx/feature/home/cubit/home_header/home_header_cubit.dart';
import 'package:moonx/feature/home/cubit/location/location_cubit.dart';
import 'package:moonx/feature/home/cubit/lunar_tips/lunar_tips_cubit.dart';
import 'package:moonx/product/core/constants/string_constants.dart';
import 'package:moonx/product/core/enum/networ_url.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/core/manager/dio_manager.dart';
import 'package:moonx/product/core/service/location_service.dart';
import 'package:moonx/product/core/service/weather_service.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/cache/users_state.dart';
import 'package:moonx/product/widget/button/project_button.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';
import 'package:moonx/product/widget/loading/custom_progress_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

part 'mixin/user_horoscope_icon_mixin.dart';
part 'widget/background_image/home_backgorund_image.dart';
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
final class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationCubit>(
          create: (context) => LocationCubit(
            LocationServiceImpl(),
            WeatherServiceImpl(
              service: DioManager(
                baseUrl: NetworkUrl.baseUrl.value,
              ).dio,
            ),
          ),
        ),
      ],
      child: const Stack(
        children: [
          _HomeBackgroundImage(),
          _HomeScaffold(),
        ],
      ),
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
