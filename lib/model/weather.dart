import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable(nullable: false)
class Weather {
  final Coord coord;
  @JsonKey(name: "weather")
  final List<WeatherDetail> weatherDetails;
  final String base;
  Weather({this.coord, this.weatherDetails, this.base});
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable(nullable: false)
class WeatherDetail {
  final int id;
  final String main;
  final String description;
  final String icon;

  WeatherDetail({this.id, this.main, this.description, this.icon});
  factory WeatherDetail.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherDetailToJson(this);
}

@JsonSerializable(nullable: false)
class Coord {
  @JsonKey(name: "lon")
  final double longitude;
  @JsonKey(name: "lat")
  final double latitude;
  Coord({this.longitude, this.latitude});

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}
