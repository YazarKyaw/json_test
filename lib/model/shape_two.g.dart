// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyShape _$MyShapeFromJson(Map<String, dynamic> json) {
  return MyShape(
    shape: json['shape'] as String,
    property: MyProperty.fromJson(json['property'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MyShapeToJson(MyShape instance) => <String, dynamic>{
      'shape': instance.shape,
      'property': instance.property.toJson(),
    };

MyProperty _$MyPropertyFromJson(Map<String, dynamic> json) {
  return MyProperty(
    width: (json['width'] as num).toDouble(),
    height: (json['height'] as num).toDouble(),
  );
}

Map<String, dynamic> _$MyPropertyToJson(MyProperty instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };
