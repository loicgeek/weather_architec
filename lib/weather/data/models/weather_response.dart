import 'package:weather_architec/weather/data/models/main_model.dart';
import 'package:weather_architec/weather/data/models/sys_model.dart';
import 'package:weather_architec/weather/data/models/wind_model.dart';

import 'coord_model.dart';
import 'weather_model.dart';

class WeatherResponse {
  CoordModel? coord;
  List<WeatherModel>? weather;
  String? base;
  MainModel? main;
  int? visibility;
  int? dt;
  int? timezone;
  int? id;
  String? name;
  int? cod;
  WindModel? wind;
  SysModel? sys;

  WeatherResponse({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.dt,
    this.timezone,
    this.id,
    this.name,
    this.cod,
    this.wind,
    this.sys,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      coord: json['coord'] == null ? null : CoordModel.fromJson(json['coord']),
      weather: json['weather'] == null
          ? null
          : List.from(
              json['weather'].map(
                (elem) => WeatherModel.fromJson(elem),
              ),
            ),
      base: json['base'],
      main: json['main'] == null ? null : MainModel.fromJson(json['main']),
      visibility: json['visibility'],
      dt: json['dt'],
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
      wind: json['wind'] == null ? null : WindModel.fromJson(json['wind']),
      sys: json['sys'] == null ? null : SysModel.fromJson(json['sys']),
    );
  }
}
