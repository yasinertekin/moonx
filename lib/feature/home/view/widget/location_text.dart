part of '../home_view.dart';

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
