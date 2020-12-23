import 'dart:convert';

class Shape {
  final String shape;
  final Property property;
  Shape({this.shape, this.property});
  factory Shape.fromJson(Map<String, dynamic> parseJson) {
    return Shape(
      shape: parseJson['shape'],
      property: Property.fromJson(parseJson['property']),
    );
  }
  String toJson() => json.encode(_shapeToJson(this));
  Map<String, dynamic> _shapeToJson(Shape shape) {
    return <String, dynamic>{
      "shape": shape.shape,
      "property": shape.property.toJson(),
    };
  }
}

class Property {
  final double width;
  final double height;
  Property({this.width, this.height});

  factory Property.fromJson(Map<String, dynamic> parseJson) {
    return Property(
      width: parseJson['width'],
      height: parseJson['height'],
    );
  }
  Map<String, dynamic> toJson() => _propertyToJson(this);
  Map<String, dynamic> _propertyToJson(Property property) {
    return <String, dynamic>{
      "width": property.width,
      "height": property.height,
    };
  }
}
