import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:moonx/product/core/service/location_service.dart';
import 'package:moonx/product/core/service/weather_service.dart';

part 'location_state.dart';

final class LocationCubit extends Cubit<LocationState> {
  LocationCubit(this._locationService, this._weatherService)
      : super(const LocationState()) {
    _getLocation();
  }

  final ILocationService _locationService;

  final IWeatherService _weatherService;

  /// Fetch Weather
  Future<void> fetchWeather() async {
    final location = state.locationDetails.first;
    await _weatherService
        .fetchWeather(location.subAdministrativeArea ?? 'Edirne');
  }

  /// Get current location
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

  Future<void> _getLocation() async {
    await _getCurrentLocation();
    await getLocationDetails();
  }

  /// Request Location Permission
  Future<void> requestPermission() async {
    final permission = await _locationService.checkPermission();
    if (!permission) {
      emit(state.copyWith(status: LocationStatus.permissionDenied));
      return;
    }
    await _getLocation();
  }

  /// Get Location Details
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
      print(e);
    }
  }
}
