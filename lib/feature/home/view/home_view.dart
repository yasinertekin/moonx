import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:intl/intl.dart';
import 'package:moonx/feature/home/cubit/location/location_cubit.dart';
import 'package:moonx/product/core/enum/networ_url.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/core/manager/dio_manager.dart';
import 'package:moonx/product/core/service/location_service.dart';
import 'package:moonx/product/core/service/weather_service.dart';
import 'package:moonx/product/widget/button/project_button.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';
import 'package:table_calendar/table_calendar.dart';

part 'widget/home_app_bar.dart';
part 'widget/home_backgorund_image.dart';
part 'widget/home_calender_widget.dart';
part 'widget/home_header_view.dart';
part 'widget/location_text.dart';
part 'widget/location_widget.dart';

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
    return const Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _HomeHeaderView(),
          ],
        ),
      ),
    );
  }
}
