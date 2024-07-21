abstract class WeatherEvent {}

class FetchCityWeather extends WeatherEvent {
  final String cityName;
  FetchCityWeather({
    required this.cityName,
  });
}
