import 'dart:convert';

import 'package:weather_architec/weather/data/models/weather_response.dart';

import '../services/weather_service.dart';

class WeatherRepository {
  final WeatherService _weatherService;
  WeatherRepository({
    required WeatherService weatherService,
  }) : _weatherService = weatherService;

  Future<WeatherResponse> fetchWeather({
    required String cityName,
  }) async {
    var jsonData = await _weatherService.fetchWeather(cityName: cityName);
    return WeatherResponse.fromJson(jsonData);
  }
}
