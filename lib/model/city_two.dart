import 'package:json_annotation/json_annotation.dart';

part 'city_two.g.dart';

@JsonSerializable(nullable: false)
class MyCity {
  final String city;
  final List<String> streets;
  MyCity({this.city, this.streets});
  factory MyCity.fromJson(Map<String, dynamic> json) => _$MyCityFromJson(json);
  Map<String, dynamic> toJson() => _$MyCityToJson(this);
}
