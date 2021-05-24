// To parse this JSON data, do
//
//     final exlusiveProduct = exlusiveProductFromJson(jsonString);

import 'dart:convert';

List<ExlusiveProduct> exlusiveProductFromJson(String str) =>
    List<ExlusiveProduct>.from(
        json.decode(str).map((x) => ExlusiveProduct.fromJson(x)));

String exlusiveProductToJson(List<ExlusiveProduct> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ExlusiveProduct {
  ExlusiveProduct({
    this.productCode,
    this.productName,
    this.weight,
    this.price,
  });

  String productCode;
  String productName;
  String weight;
  String price;

  factory ExlusiveProduct.fromJson(Map<String, dynamic> json) =>
      ExlusiveProduct(
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
