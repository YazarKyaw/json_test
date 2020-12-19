import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_test/model/student.dart';
import 'package:json_test/model/student_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Future<String> _loadJsonFromJson(String fileName) async {
    return await rootBundle.loadString("assets/data/$fileName");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Read Json'),
        ),
        body: Center(
          child: Text('Hello Json'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var jsonStudent = await _loadJsonFromJson('data_one.json');
            MyStudent student = MyStudent.fromJson(jsonDecode(jsonStudent));
            print(student);
            print(student.toJson());
          },
          child: Icon(Icons.read_more),
        ),
      ),
    );
  }
}
