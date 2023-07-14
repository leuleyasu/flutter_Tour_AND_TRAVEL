import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class productDataModel {
  String name;
  int price;
  int stars;
  String description;
  String location;
  productDataModel({
    required this.name,
    required this.price,
    required this.stars,
    required this.description,
    required this.location,
  });
 
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'stars': stars,
      'description': description,
      'location': location,
    };
  }

  factory productDataModel.fromMap(Map<String, dynamic> map) {
    return productDataModel(
      name: map['name'] as String,
      price: map['price'] as int,
      stars: map['stars'] as int,
      description: map['description'] as String,
      location: map['location'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory productDataModel.fromJson(String source) => productDataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
