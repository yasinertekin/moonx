import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

@immutable

/// A singleton class that manages the Dio instance for making HTTP requests.
final class DioManager {
  /// Factory constructor for the DioManager.
  factory DioManager({required String baseUrl}) {
    _singleton._dio.options = BaseOptions(baseUrl: baseUrl);
    return _singleton;
  }

  DioManager._internal();

  static final DioManager _singleton = DioManager._internal();

  final Dio _dio = Dio();

  /// Get the Dio instance.
  Dio get dio => _dio;
}
