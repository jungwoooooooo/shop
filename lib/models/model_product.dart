import 'package:test/test.dart';

class Product {
  int? productNo;
  String? productName;
  String? productDetails;
  String? productImageUrl;
  double? price;
  String? category;
  String? productNameLowercase;

  Product({
    this.productNo,
    this.productName,
    this.productDetails,
    this.productImageUrl,
    this.price,
    this.category,
    this.productNameLowercase,
  });

  Product.fromJson(Map<String, Object?> json)
      : this(
    productNo: json['productNo'] as int,
    productName: json['productName'] as String,
    productImageUrl: json['productImageUrl'] as String,
    price: (json['price'] as int).toDouble(),
    category: json['category'] as String,
    productNameLowercase: json['productNameLowercase'] as String?,
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['productNo'] = productNo;
    data['productName'] = productName;
    data['productDetails'] = productDetails;
    data['productImageUrl'] = productImageUrl;
    data['price'] = price;
    data['category'] = category;
    data['productNameLowercase'] = productNameLowercase;
    return data;
  }
}