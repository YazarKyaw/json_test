import 'package:json_annotation/json_annotation.dart';
part 'product_two.g.dart';

@JsonSerializable()
class MyProduct {
  final int id;
  final String name;
  final List<MyImage> images;
  MyProduct({this.id, this.name, this.images});
  factory MyProduct.fromJson(Map<String, dynamic> json) =>
      _$MyProductFromJson(json);
  Map<String, dynamic> toJson() => _$MyProductToJson(this);
}

@JsonSerializable()
class MyImage {
  final int id;
  final String name;
  MyImage({this.id, this.name});

  factory MyImage.fromJson(Map<String, dynamic> json) =>
      _$MyImageFromJson(json);
  Map<String, dynamic> toJson() => _$MyImageToJson(this);
}
