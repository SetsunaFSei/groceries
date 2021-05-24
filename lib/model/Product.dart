import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.productCode,
    this.productName,
    this.weight,
    this.price,
  });

  String productCode;
  String productName;
  String weight;
  String price;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
