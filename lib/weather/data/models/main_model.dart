import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MainModel {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;
  MainModel({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });

  factory MainModel.fromJson(Map<String, dynamic> map) {
    return MainModel(
      temp: map['temp'] != null ? map['temp'] as double : null,
      feelsLike: map['feelsLike'] != null ? map['feelsLike'] as double : null,
      tempMin: map['tempMin'] != null ? map['tempMin'] as double : null,
      tempMax: map['tempMax'] != null ? map['tempMax'] as double : null,
      pressure: map['pressure'] != null ? map['pressure'] as int : null,
      humidity: map['humidity'] != null ? map['humidity'] as int : null,
      seaLevel: map['seaLevel'] != null ? map['seaLevel'] as int : null,
      grndLevel: map['grndLevel'] != null ? map['grndLevel'] as int : null,
    );
  }
}
