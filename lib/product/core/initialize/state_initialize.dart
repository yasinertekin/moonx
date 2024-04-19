import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moonx/feature/home/cubit/daily_horoscope/daily_horoscope_cubit.dart';
import 'package:moonx/feature/home/cubit/location/location_cubit.dart';
import 'package:moonx/feature/home/cubit/lunar_tips/lunar_tips_cubit.dart';
import 'package:moonx/feature/meditation/cubit/sound_cubit.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/enum/network_url.dart';
import 'package:moonx/product/core/manager/dio_manager.dart';
import 'package:moonx/product/core/service/gemini_service.dart';
import 'package:moonx/product/core/service/location_service.dart';
import 'package:moonx/product/core/service/sound_service.dart';
import 'package:moonx/product/core/service/weather_service.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';

/// A widget that initializes the state of the application
final class StateInitialize extends StatelessWidget {
  /// Constructor for [StateInitialize]
  const StateInitialize({
    required this.child,
    super.key,
  });

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UsersBloc>(
          create: (context) => Locator.usersBloc,
        ),
        BlocProvider<DailyHoroscopeCubit>(
          create: (context) => DailyHoroscopeCubit(
            GeminiServiceImpl(),
          ),
        ),
        BlocProvider<LocationCubit>(
          create: (context) => LocationCubit(
            LocationServiceImpl(),
            WeatherServiceImpl(
              service: DioManager(
                baseUrl: NetworkUrl.baseUrl.getValue(''),
              ).dio,
            ),
          ),
        ),
        BlocProvider<LunarTipsCubit>(
          create: (context) => LunarTipsCubit(
            GeminiServiceImpl(),
          ),
        ),
        BlocProvider<SoundCubit>(
          create: (context) => SoundCubit(
            soundService: SoundServiceImpl(),
          )..updateTimer(),
        ),
      ],
      child: child,
    );
  }
}
