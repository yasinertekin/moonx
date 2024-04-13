import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

abstract interface class ILocationService {
  /// Get current location
  Future<Position> getCurrentLocation();

  /// Permission check
  Future<bool> checkPermission();

  /// Get Location Details
  Future<List<Placemark>> getLocationDetails(Position position);
}

@immutable
final class LocationServiceImpl implements ILocationService {
  @override
  Future<Position> getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    return position;
  }

  @override
  Future<bool> checkPermission() async {
    final permission = await Geolocator.requestPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  @override
  Future<List<Placemark>> getLocationDetails(Position position) async {
    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
    return placemarks;
  }
}
