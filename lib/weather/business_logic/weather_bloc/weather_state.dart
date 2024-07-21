import 'package:weather_architec/weather/data/models/weather_response.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class FetchCityWeatherLoading extends WeatherState {}

class FetchCityWeatherSuccess extends WeatherState {
  final WeatherResponse weatherResponse;
  FetchCityWeatherSuccess({
    required this.weatherResponse,
  });
}

class FetchCityWeatherFailure extends WeatherState {}
