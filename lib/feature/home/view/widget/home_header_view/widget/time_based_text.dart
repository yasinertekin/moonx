part of '../../../home_view.dart';

final class _TimeBasedText extends StatelessWidget {
  const _TimeBasedText();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LocationCubit, LocationState, Weather>(
      selector: (state) => state.weather ?? Weather(),
      builder: (context, state) {
        return Text(
          state.current?.isDay == 1
              ? StringConstants.goodMorning
              : StringConstants.goodEvening,
          style: context.theme.textTheme.bodyLarge?.copyWith(
            color: ColorName.colorColdWind,
            fontSize: 16,
          ),
        );
      },
    );
  }
}
