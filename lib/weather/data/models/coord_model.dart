class CoordModel {
  double? lon;
  double? lat;
  CoordModel({
    this.lon,
    this.lat,
  });

  factory CoordModel.fromJson(Map<String, dynamic> json) {
    return CoordModel(
      lon: json['lon'],
      lat: json['lat'],
    );
  }
}
