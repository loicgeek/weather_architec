class WindModel {
  double? speed;
  int? deg;
  WindModel({
    this.speed,
    this.deg,
  });

  factory WindModel.fromJson(Map<String, dynamic> map) {
    return WindModel(
      speed: map['speed'] != null ? map['speed'] as double : null,
      deg: map['deg'] != null ? map['deg'] as int : null,
    );
  }
}
