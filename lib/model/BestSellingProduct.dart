// To parse this JSON data, do
//
//     final bestSellingProduct = bestSellingProductFromJson(jsonString);

import 'dart:convert';

List<BestSellingProduct> bestSellingProductFromJson(String str) =>
    List<BestSellingProduct>.from(
        json.decode(str).map((x) => BestSellingProduct.fromJson(x)));

String bestSellingProductToJson(List<BestSellingProduct> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BestSellingProduct {
  BestSellingProduct({
    this.productCode,
    this.productName,
    this.weight,
    this.price,
  });

  String productCode;
  String productName;
  String weight;
  String price;

  factory BestSellingProduct.fromJson(Map<String, dynamic> json) =>
      BestSellingProduct(
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
