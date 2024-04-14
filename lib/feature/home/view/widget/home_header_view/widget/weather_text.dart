part of '../../../home_view.dart';

final class _WeatherText extends StatelessWidget {
  const _WeatherText();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        final weather = state.weather;
        switch (state.status) {
          case LocationStatus.initial:
            return const Text('');
          case LocationStatus.permissionDenied:
            return const _PermissionDeniedText();
          case LocationStatus.locationError:
            return const _LocationError();
          case LocationStatus.locationLoaded:
            if (state.locationDetails.isEmpty) {
              return const _LocationNotFound();
            }
            return _CurrentCityTemp(
              temp:
                  // ignore: lines_longer_than_80_chars
                  '${weather?.current?.condition?.text}, ${state.weather?.current?.tempC} °C',
            );
          case LocationStatus.loading:
            return const _LoadingText();
        }
      },
    );
  }
}

final class _CurrentCityTemp extends StatelessWidget {
  const _CurrentCityTemp({
    required this.temp,
  });

  final String temp;

  @override
  Widget build(BuildContext context) {
    return Text(
      temp,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        fontSize: 12,
        color: ColorName.colorColdWind,
      ),
    );
  }
}
