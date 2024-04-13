import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:intl/intl.dart';
import 'package:moonx/feature/home/cubit/gemini/gemini_cubit.dart';
import 'package:moonx/feature/home/cubit/gemini/gemini_state.dart';
import 'package:moonx/feature/home/cubit/location/location_cubit.dart';
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
import 'package:table_calendar/table_calendar.dart';

part 'mixin/user_horoscope_icon_mixin.dart';
part 'widget/daily_horoscope.dart';
part 'widget/home_backgorund_image.dart';
part 'widget/home_banner.dart';
part 'widget/home_header_view.dart';
part 'widget/lunar_tips.dart';

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
            const EmptySizedBox(),
          ],
        ),
      ),
    );
  }
}

final class _LunarTipsPageView extends StatelessWidget {
  const _LunarTipsPageView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(1),
      child: PageView(
        children: [
          Padding(
            padding: ProjectPadding.low.paddingAll,
            child: Material(
              elevation: 5,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: ColorName.colorGloomyPurple,
                  width: 3,
                ),
                borderRadius: ProjectRadius.small.borderRadius,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: ProjectPadding.medium.paddingOnlyTopLeft,
                    child: Assets.images.imgBusiness2.image(
                      package: 'gen',
                    ),
                  ),
                  Padding(
                    padding: ProjectPadding.medium.paddingAll,
                    child: const Text(
                      maxLines: 40,
                      'Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profitPlan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and meetings in accordance with the lunar events to gain the most profit. Plan your negotiations, contacts and ',
                      style: TextStyle(
                        color: ColorName.colorEmptiness,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
