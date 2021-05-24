// To parse this JSON data, do
//
//     final cart = cartFromJson(jsonString);

import 'dart:convert';

List<Cart> cartFromJson(String str) =>
    List<Cart>.from(json.decode(str).map((x) => Cart.fromJson(x)));

String cartToJson(List<Cart> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cart {
  Cart({
    this.productCode,
    this.productName,
    this.weight,
    this.price,
    this.quantity,
  });

  String productCode;
  String productName;
  String weight;
  String price;
  String quantity;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        productCode: json["productCode"] == null ? null : json["productCode"],
        productName: json["productName"] == null ? null : json["productName"],
        weight: json["weight"] == null ? null : json["weight"],
        price: json["price"] == null ? null : json["price"],
        quantity: json["quantity"] == null ? null : json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "productCode": productCode == null ? null : productCode,
        "productName": productName == null ? null : productName,
        "weight": weight == null ? null : weight,
        "price": price == null ? null : price,
        "quantity": quantity == null ? null : quantity,
      };
}
