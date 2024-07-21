import 'package:dio/dio.dart';

class WeatherService {
  final Dio _dio;
  WeatherService({
    required Dio dio,
  }) : _dio = dio;

  Future<dynamic> fetchWeather({
    required String cityName,
  }) async {
    Response response = await _dio.get(
      "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=cd4b80ffa7a59f7415f0b8a62e2e141e&lang=fr&units=metric",
    );
    return response.data;
  }
}
