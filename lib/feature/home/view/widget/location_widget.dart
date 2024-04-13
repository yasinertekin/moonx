part of '../home_view.dart';

final class _LocationWidget extends StatelessWidget {
  const _LocationWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            print(context
                .read<LocationCubit>()
                .state
                .locationDetails
                .first
                .subAdministrativeArea);

            print(context.read<LocationCubit>().state.weather?.current?.tempC);
          },
          child: const Text('Get Location'),
        ),
        const _TimeBasedText(),
        const _LocationText(),
        const _MoonImage(),
        const EmptySizedBox(),
        const _DateTimeText(),
        const WeatherText(),
      ],
    );
  }
}

final class _TimeBasedText extends StatelessWidget {
  const _TimeBasedText();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Good Morning !',
      style: TextStyle(
        color: ColorName.colorColdWind,
        fontSize: 16,
      ),
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

final class WeatherText extends StatelessWidget {
  const WeatherText({super.key});

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
              '${state.weather?.current?.tempC} °C',
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
