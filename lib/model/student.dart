import 'dart:convert';

class Student {
  final int id;
  final String name;
  final String address;
  Student({this.id, this.name, this.address});

  factory Student.fromJson(Map<String, dynamic> parseJson) {
    return Student(
      id: parseJson["id"],
      name: parseJson["name"],
      address: parseJson["address"],
    );
  }
  String toJson() => jsonEncode(_toJson(this));
  Map<String, dynamic> _toJson(Student student) {
    return <String, dynamic>{
      "id": student.id,
      "name": student.name,
      "address": student.address,
    };
  }
}
