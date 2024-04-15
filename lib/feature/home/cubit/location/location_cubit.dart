import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:moonx/product/core/service/location_service.dart';
import 'package:moonx/product/core/service/weather_service.dart';

part 'location_state.dart';

/// Cubit responsible for managing the location state.
final class LocationCubit extends Cubit<LocationState> {
  /// Initializes the location cubit.
  LocationCubit(this._locationService, this._weatherService)
      : super(const LocationState()) {
    _getLocation();
  }

  final ILocationService _locationService;

  final IWeatherService _weatherService;

  /// Fetches the weather for the current location.
  Future<void> fetchWeather() async {
    final location = state.locationDetails.first;
    await _weatherService
        .fetchWeather(location.subAdministrativeArea ?? 'Edirne');
  }

  /// Gets the current location.
  Future<void> _getCurrentLocation() async {
    final permission = await _locationService.checkPermission();
    if (!permission) {
      emit(state.copyWith(status: LocationStatus.permissionDenied));
      return;
    }
    final position = await _locationService.getCurrentLocation();
    emit(
      state.copyWith(
        position: position,
        status: LocationStatus.loading,
      ),
    );
  }

  /// Gets the location and location details.
  Future<void> _getLocation() async {
    await _getCurrentLocation();
    await getLocationDetails();
  }

  /// Requests location permission.
  Future<void> requestPermission() async {
    final permission = await _locationService.checkPermission();
    if (!permission) {
      emit(state.copyWith(status: LocationStatus.permissionDenied));
      return;
    }
    await _getLocation();
  }

  /// Gets the location details.
  Future<void> getLocationDetails() async {
    if (state.position == null) return;
    try {
      final locationDetails =
          await _locationService.getLocationDetails(state.position!);
      final weather = await _weatherService.fetchWeather(
        locationDetails.first.subAdministrativeArea ?? 'Edirne',
      );

      emit(
        state.copyWith(
          locationDetails: locationDetails,
          status: LocationStatus.locationLoaded,
          weather: weather,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: LocationStatus.locationError));
    }
  }
}
