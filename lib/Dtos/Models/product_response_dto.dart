// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    required this.id,
    required this.name,
    required this.price,
    required this.inCart,
    // required this.subcategory,
     // required this.category,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.status,
  });
  final String id;
  final String name;
  final int price;
  final bool inCart;
  // final String subcategory;
    // final String category;
  final String image;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;
  final bool status;

  factory Products.fromMap(Map<String,dynamic> json) => Products(
        id: json["_id"] ?? "",
        name: json["name"] ?? "",
        price: json["price"] ?? 0,
        inCart: json["inCart"] ?? false,
        // subcategory: json["subcategory"] ?? "",
          // category: json["category"] ?? "",
        image: json["image"] ?? "",
       
        createdAt: DateTime.parse(json["createdAt"] ?? ""),
        updatedAt: DateTime.parse(json["updatedAt"] ?? ""),
        v: json["__v"] ?? 0,
        status: json["status"] ?? "",
      );

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["_id"],
        name: json["name"],
        price: json["price"],
        inCart: json["inCart"],
        // subcategory: json["subcategory"],
          // category: json["category"] ?? "",
        image: json["image"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        status: json["status"],
      );

  // Object? get docs => null;

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "price": price,
        "inCart": inCart,
        // "subcategory": subcategory,
         // "category": category,
        "image": image,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "status": status,
      };
}
