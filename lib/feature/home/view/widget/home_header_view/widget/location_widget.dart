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
      ],
    );
  }
}
