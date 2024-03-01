import 'package:flutter/material.dart';

class CartProduct {
  int? cartId;
  int? customerId;
  int? productId;
  int? cartQuantity;
  bool? isChecked;

  CartProduct(
    this.cartId,
    this.customerId,
    this.productId,
    this.cartQuantity,
    this.isChecked,
  );

  Map<String, dynamic> toJson() => {
      "cartId": cartId,
      "customerId": customerId,
      "productId": productId,
      "cartQuantity": cartQuantity,
      "isChecked": isChecked,

  };

  factory CartProduct.fromJson(Map<String, dynamic> json) {
    return CartProduct(
      json["cartId"],
      json["customerId"],
      json["productId"],
      json["cartQuantity"],
      json["isChecked"] == 0 ? false : true,
    );
  }
}