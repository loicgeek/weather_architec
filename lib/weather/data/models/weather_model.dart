class WeatherModel {
  int? id;
  String? main;
  String? description;
  String? icon;
  WeatherModel({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json['id'] != null ? json['id'] as int : null,
      main: json['main'] != null ? json['main'] as String : null,
      description:
          json['description'] != null ? json['description'] as String : null,
      icon: json['icon'] != null ? json['icon'] as String : null,
    );
  }
}
