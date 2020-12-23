import 'dart:convert';

class Product {
  final int id;
  final String name;
  List<Image> images;
  Product({this.id, this.name, this.images});

  factory Product.fromJson(Map<String, dynamic> parseJson) {
    var list = parseJson['images'] as List;
    List<Image> imageList = list.map((e) => Image.fromJson(e)).toList();
    return Product(
      id: parseJson['id'],
      name: parseJson['name'],
      images: imageList,
    );
  }
  String toJson() => json.encode(_productToJson(this));
  Map<String, dynamic> _productToJson(Product product) {
    return <String, dynamic>{
      "id": product.id,
      "name": product.name,
      "images": product.images..map((e) => e.toJson()),
    };
  }
}

class Image {
  final int id;
  final String name;
  Image({this.id, this.name});

  factory Image.fromJson(Map<String, dynamic> parseJson) {
    return Image(id: parseJson['id'], name: parseJson['name']);
  }
  Map<String, dynamic> toJson() => _imageToJson(this);
  Map<String, dynamic> _imageToJson(Image image) {
    return <String, dynamic>{
      "id": image.id,
      "name": image.name,
    };
  }
}
