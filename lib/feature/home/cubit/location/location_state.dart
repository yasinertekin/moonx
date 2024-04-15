part of 'location_cubit.dart';

/// Represents the state of the location feature.
final class LocationState extends Equatable {
  /// Constructs a [LocationState] instance.
  const LocationState({
    this.status = LocationStatus.initial,
    this.position,
    this.locationDetails = const [],
    this.weather,
  });

  /// The status of the location.
  final LocationStatus status;

  /// The current position.
  final Position? position;

  /// The details of the location.
  final List<Placemark> locationDetails;

  /// The weather information.
  final Weather? weather;

  /// Creates a new [LocationState] instance with the provided values.
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

/// Represents the possible status values of the location.
enum LocationStatus {
  /// The initial status.
  initial,

  /// The permission to access the location is denied.
  permissionDenied,

  /// An error occurred while retrieving the location.
  locationError,

  /// The location is currently being loaded.
  loading,

  /// The location is successfully loaded.
  locationLoaded
}
