// To parse this JSON data, do
//
//     final groceriesProduct = groceriesProductFromJson(jsonString);

import 'dart:convert';

List<GroceriesProduct> groceriesProductFromJson(String str) =>
    List<GroceriesProduct>.from(
        json.decode(str).map((x) => GroceriesProduct.fromJson(x)));

String groceriesProductToJson(List<GroceriesProduct> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GroceriesProduct {
  GroceriesProduct({
    this.productCode,
    this.productName,
    this.weight,
    this.price,
  });

  String productCode;
  String productName;
  String weight;
  String price;

  factory GroceriesProduct.fromJson(Map<String, dynamic> json) =>
      GroceriesProduct(
        productCode: json["productCode"] == null ? null : json["productCode"],
        productName: json["productName"] == null ? null : json["productName"],
        weight: json["weight"] == null ? null : json["weight"],
        price: json["price"] == null ? null : json["price"],
      );

  Map<String, dynamic> toJson() => {
        "productCode": productCode == null ? null : productCode,
        "productName": productName == null ? null : productName,
        "weight": weight == null ? null : weight,
        "price": price == null ? null : price,
      };
}
