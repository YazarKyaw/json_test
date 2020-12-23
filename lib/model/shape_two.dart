import 'package:json_annotation/json_annotation.dart';
part 'shape_two.g.dart';

@JsonSerializable(nullable: false)
class MyShape {
  final String shape;
  final MyProperty property;
  MyShape({this.shape, this.property});
  factory MyShape.fromJson(Map<String, dynamic> json) =>
      _$MyShapeFromJson(json);
  Map<String, dynamic> toJson() => _$MyShapeToJson(this);
}

@JsonSerializable(nullable: false)
class MyProperty {
  final double width;
  final double height;
  MyProperty({this.width, this.height});

  factory MyProperty.fromJson(Map<String, dynamic> parseJson) =>
      _$MyPropertyFromJson(parseJson);
  Map<String, dynamic> toJson() => _$MyPropertyToJson(this);
}
