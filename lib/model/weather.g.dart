// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
    weatherDetails: (json['weather'] as List)
        .map((e) => WeatherDetail.fromJson(e as Map<String, dynamic>))
        .toList(),
    base: json['base'] as String,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'coord': instance.coord.toJson(),
      'weather': instance.weatherDetails.map((e) => e.toJson()),
      'base': instance.base,
    };

WeatherDetail _$WeatherDetailFromJson(Map<String, dynamic> json) {
  return WeatherDetail(
    id: json['id'] as int,
    main: json['main'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$WeatherDetailToJson(WeatherDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Coord _$CoordFromJson(Map<String, dynamic> json) {
  return Coord(
    longitude: (json['lon'] as num).toDouble(),
    latitude: (json['lat'] as num).toDouble(),
  );
}

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lon': instance.longitude,
      'lat': instance.latitude,
    };
