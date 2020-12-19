import 'package:json_annotation/json_annotation.dart';

part 'student_two.g.dart';

@JsonSerializable(nullable: false)
class MyStudent {
  final int id;
  final String name;
  final String address;
  MyStudent({this.id, this.name, this.address});

  factory MyStudent.fromJson(Map<String, dynamic> json) =>
      _$MyStudentFromJson(json);
  Map<String, dynamic> toJson() => _$MyStudentToJson(this);
}
