// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyCity _$MyCityFromJson(Map<String, dynamic> json) {
  return MyCity(
    city: json['city'] as String,
    streets: (json['streets'] as List).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$MyCityToJson(MyCity instance) => <String, dynamic>{
      'city': instance.city,
      'streets': instance.streets,
    };
