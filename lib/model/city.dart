import 'dart:convert';

import 'package:flutter/cupertino.dart';

class City {
  final String city;
  final List<String> streets;
  City({this.city, this.streets});
  factory City.fromJson(Map<String, dynamic> parsedJson) {
    var streetFromJson = parsedJson["streets"];
    List<String> streetList = List<String>.from(streetFromJson);
    return City(city: parsedJson['city'], streets: streetList);
  }
  String toJson() => json.encode(_cityToJson(this));
  Map<String, dynamic> _cityToJson(City city) {
    return <String, dynamic>{
      "city": city.city,
      "streets": city.streets..map((e) => e.toString()),
    };
  }
}
