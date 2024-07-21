import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_architec/weather/business_logic/weather_bloc/weather_event.dart';
import 'package:weather_architec/weather/business_logic/weather_bloc/weather_state.dart';
import 'package:weather_architec/weather/data/repositories/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;
  WeatherBloc({
    required this.weatherRepository,
  }) : super(WeatherInitial()) {
    on<FetchCityWeather>((event, emit) async {
      try {
        // emettre l'etat de chargement
        emit(FetchCityWeatherLoading());
        // charger la donnee
        var weather =
            await weatherRepository.fetchWeather(cityName: event.cityName);

        // emet letat de success de chargement
        emit(FetchCityWeatherSuccess(weatherResponse: weather));
      } catch (e) {
        // emettre l'etat d'echec de chargement
        emit(FetchCityWeatherFailure());
      }
    });
  }
}
