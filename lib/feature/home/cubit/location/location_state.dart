part of 'location_cubit.dart';

final class LocationState extends Equatable {
  const LocationState({
    this.status = LocationStatus.initial,
    this.position,
    this.locationDetails = const [],
    this.weather,
  });
  final LocationStatus status;
  final Position? position;
  final List<Placemark> locationDetails;
  final Weather? weather;

  LocationState copyWith({
    LocationStatus? status,
    Position? position,
    List<Placemark>? locationDetails,
    Weather? weather,
  }) {
    return LocationState(
      status: status ?? this.status,
      position: position ?? this.position,
      locationDetails: locationDetails ?? this.locationDetails,
      weather: weather ?? this.weather,
    );
  }

  @override
  List<Object?> get props => [status, position, locationDetails, weather];
}

enum LocationStatus {
  initial,
  permissionDenied,
  locationError,
  loading,
  locationLoaded
}
