// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyStudent _$MyStudentFromJson(Map<String, dynamic> json) {
  return MyStudent(
    id: json['id'] as int,
    name: json['name'] as String,
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$MyStudentToJson(MyStudent instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };
