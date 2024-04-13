part of '../home_view.dart';

final class _HomeHeaderView extends StatefulWidget {
  const _HomeHeaderView();

  @override
  State<_HomeHeaderView> createState() => _HomeHeaderViewState();
}

final class _HomeHeaderViewState extends State<_HomeHeaderView> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _DateTimeButton(
          _pageController,
        ),
        const EmptySizedBox(),
        SizedBox(
          height: context.dynamicHeight(0.58),
          child: PageView.builder(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: HomeHeader.values.length,
            itemBuilder: (context, index) {
              return HomeHeader.values[index].widget;
            },
          ),
        ),
      ],
    );
  }
}

final class _DateTimeButton extends StatelessWidget {
  const _DateTimeButton(
    this.pageController,
  );

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: ProjectPadding.medium.paddingOnlyRight,
        child: ProjectButton(
          backgroundColor: ColorName.colorKon,
          width: context.dynamicWidth(0.3),
          height: context.dynamicHeight(0.05),
          borderRadiusGeometry: ProjectRadius.small.borderRadius,
          onPressed: () {
            switch (HomeHeader.values[pageController.page!.toInt()]) {
              case HomeHeader.location:
                pageController.animateToPage(
                  HomeHeader.values.length - 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              case HomeHeader.calendar:
                pageController.animateToPage(
                  HomeHeader.values.length - 2,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
            }
          },
          title: '2 Aug 2023',
          titleColor: ColorName.colorThickBlue,
        ),
      ),
    );
  }
}

enum HomeHeader {
  location(_LocationWidget()),

  calendar(_HomeCalenderWidget());

  final Widget widget;

  const HomeHeader(this.widget);
}

final class _LocationWidget extends StatelessWidget {
  const _LocationWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _TimeBasedText(),
        _LocationText(),
        _MoonImage(),
        EmptySizedBox(),
        _DateTimeText(),
        _WeatherText(),
      ],
    );
  }
}

final class _TimeBasedText extends StatelessWidget {
  const _TimeBasedText();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LocationCubit, LocationState, Weather>(
      selector: (state) => state.weather ?? Weather(),
      builder: (context, state) {
        return Text(
          state.current?.isDay == 1 ? 'Good Morning!' : 'Good Evening!',
          style: context.theme.textTheme.bodyLarge?.copyWith(
            color: ColorName.colorColdWind,
            fontSize: 16,
          ),
        );
      },
    );
  }
}

final class _DateTimeText extends StatelessWidget {
  const _DateTimeText();

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final dateTimeFormat = DateFormat('d MMM HH.mm', 'en_US');

    final formattedDateTime = dateTimeFormat.format(now);
    return Text(
      formattedDateTime,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: ColorName.colorColdWind,
        fontSize: 15,
      ),
    );
  }
}

final class _MoonImage extends StatelessWidget {
  const _MoonImage();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Assets.images.imgMoon.image(
        package: 'gen',
        fit: BoxFit.cover,
        height: context.dynamicHeight(0.2),
      ),
    );
  }
}

final class _WeatherText extends StatelessWidget {
  const _WeatherText();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        switch (state.status) {
          case LocationStatus.initial:
            return const Text('');
          case LocationStatus.permissionDenied:
            return const _PermissionDeniedText();
          case LocationStatus.locationError:
            return Text(
              'Location Error',
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 12,
              ),
            );
          case LocationStatus.locationLoaded:
            if (state.locationDetails.isEmpty) {
              return Text(
                'Location Details Not Found',
                style: context.theme.textTheme.bodyLarge?.copyWith(
                  fontSize: 12,
                ),
              );
            }
            return Text(
              '${state.weather?.current?.condition?.text}, ${state.weather?.current?.tempC} °C',
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 12,
                color: ColorName.colorColdWind,
              ),
            );
          case LocationStatus.loading:
            return Text(
              'Loading Weather information..',
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 12,
              ),
            );
        }
      },
    );
  }
}

final class _LocationText extends StatelessWidget {
  const _LocationText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: BlocBuilder<LocationCubit, LocationState>(
        builder: (context, state) {
          switch (state.status) {
            case LocationStatus.initial:
              return const Text('');
            case LocationStatus.permissionDenied:
              return const _PermissionDeniedText();
            case LocationStatus.locationError:
              return Text(
                'Location Error',
                style: context.theme.textTheme.bodyLarge?.copyWith(
                  fontSize: 12,
                ),
              );
            case LocationStatus.locationLoaded:
              if (state.locationDetails.isEmpty) {
                return Text(
                  'Location Details Not Found',
                  style: context.theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 12,
                  ),
                );
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _CityText(
                    cityText:
                        '${state.locationDetails.first.administrativeArea}, ',
                  ),
                  _CountryText(
                    countryText: state.locationDetails.first.country.toString(),
                  ),
                ],
              );
            case LocationStatus.loading:
              return Text(
                'Loading Location Information...',
                style: context.theme.textTheme.bodyLarge?.copyWith(
                  fontSize: 12,
                ),
              );
          }
        },
      ),
    );
  }
}

final class _PermissionDeniedText extends StatelessWidget {
  const _PermissionDeniedText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Location Permission Denied',
      style: context.theme.textTheme.bodyLarge?.copyWith(
        fontSize: 12,
      ),
    );
  }
}

final class _CityText extends StatelessWidget {
  const _CityText({
    required this.cityText,
  });

  final String cityText;

  @override
  Widget build(BuildContext context) {
    return Text(
      cityText,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        fontSize: 12,
      ),
    );
  }
}

final class _CountryText extends StatelessWidget {
  const _CountryText({required this.countryText});

  final String countryText;

  @override
  Widget build(BuildContext context) {
    return Text(
      countryText,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        fontSize: 12,
      ),
    );
  }
}

final class _HomeCalenderWidget extends StatelessWidget {
  const _HomeCalenderWidget();

  @override
  Widget build(BuildContext context) {
    return TableCalendar<DateTime>(
      firstDay: DateTime.utc(2022, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
      ),
    );
  }
}
