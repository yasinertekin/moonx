part of '../../../home_view.dart';

final class _LocationWidget extends StatelessWidget {
  const _LocationWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _TimeBasedText(),
        const _LocationText(),
        EmptySizedBox(
          height: context.dynamicHeight(0.02),
        ),
        const _MoonImage(),
        EmptySizedBox(
          height: context.dynamicHeight(0.04),
        ),
        const _DateTimeText(),
        const EmptySizedBox(),
        const _WeatherText(),
        EmptySizedBox(
          height: context.dynamicHeight(0.03),
        ),
        const _HourlyForecastList(),
      ],
    );
  }
}

final class _HourlyForecastList extends StatelessWidget {
  const _HourlyForecastList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: context.dynamicWidth(1),
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return EmptySizedBox(
            width: context.dynamicWidth(0.05),
          );
        },
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: HourlyWeatherForecast.hourlyWeatherForecastList.length,
        itemBuilder: (BuildContext context, int index) {
          final hourlyWeatherForecast =
              HourlyWeatherForecast.hourlyWeatherForecastList[index];
          return _HourlyForecastItem(
            hourlyWeatherForecast: hourlyWeatherForecast,
          );
        },
      ),
    );
  }
}

final class _HourlyForecastItem extends StatelessWidget {
  const _HourlyForecastItem({
    required this.hourlyWeatherForecast,
  });

  final HourlyWeatherForecast hourlyWeatherForecast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 83,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: ProjectRadius.small.borderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            hourlyWeatherForecast.icon,
            Text(
              hourlyWeatherForecast.time,
              style: context.theme.textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
