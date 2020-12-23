import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_test/model/city.dart';
import 'package:json_test/model/city_two.dart';
import 'package:json_test/model/product_two.dart';
import 'package:json_test/model/shape.dart';
import 'package:json_test/model/shape_two.dart';
import 'package:json_test/model/student.dart';
import 'package:json_test/model/student_two.dart';
import 'package:json_test/model/weather.dart';
import 'model/product.dart';

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
            // var jsonCity = await _loadJsonFromJson('data_two.json');
            // MyCity city = MyCity.fromJson(json.decode(jsonCity));
            // print(city.toJson());
            //
            // var jsonShape = await _loadJsonFromJson('data_three.json');
            // Shape shape = Shape.fromJson(json.decode(jsonShape));
            // print(shape.toJson());

            // var jsonProduct = await _loadJsonFromJson('data_four.json');
            // MyProduct product = MyProduct.fromJson(json.decode(jsonProduct));
            // print(product.toJson());

            var jsonWeather = await _loadJsonFromJson('weather.json');
            Weather weather = Weather.fromJson(jsonDecode(jsonWeather));
            print(weather.toJson());
          },
          child: Icon(Icons.read_more),
        ),
      ),
    );
  }
}

// var jsonStudent = await _loadJsonFromJson('data_one.json');
// MyStudent student = MyStudent.fromJson(jsonDecode(jsonStudent));
// print(student);
// print(student.toJson());
