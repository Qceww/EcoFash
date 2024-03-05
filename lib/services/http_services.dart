import 'dart:convert';

import 'package:figma/classes/address.dart';
import 'package:figma/classes/colors.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/classes/cartProduct.dart';
import 'package:figma/classes/redeemedReward.dart';
import 'package:figma/classes/reward.dart';
import 'package:figma/classes/user.dart';
import 'package:figma/classes/wishlist.dart';
import 'package:http/http.dart' as http;

String url = "http://10.0.2.2:8000/api";

Future<int?> createUser(user) async {
  final response = await http.post(
    Uri.parse("$url/register-user"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    body: jsonEncode(user),
  );

  if (response.statusCode == 200) {
    return 200;
  }

  return 400;
}

Future<User?> verifyUser(user) async {
  final response = await http.post(
    Uri.parse("$url/login-user"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    body: jsonEncode(user),
  );

  if (response.statusCode == 200) {
    // print(response.body);

    // print(User.fromJson(jsonDecode(response.body)));

    return User.fromJson(jsonDecode(response.body));
  }
  return null;
}

Future<List<Product>?> getProducts() async {
  final response = await http.post(
    Uri.parse("$url/get-products"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
  );

  if (response.statusCode == 200) {
    List<dynamic> body = jsonDecode(response.body);

    // print(body);

    List<Product> productList =
        (body).map((itemWord) => Product.fromJson(itemWord)).toList();

    // print((body).map((itemWord) => print(itemWord)));

    return productList;
  }
}

Future<Product?> getDetailedProducts(product) async {
  final response = await http.post(Uri.parse("$url/get-detailed-product"),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode(product));

  if (response.statusCode == 200) {
    return Product.fromJson(jsonDecode(response.body));
  }
}

Future<List<ColorClass>?> getAllColors() async {
  final response = await http.post(
    Uri.parse("$url/get-allcolor"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
  );

  if (response.statusCode == 200) {
    List<dynamic> body = jsonDecode(response.body);

    List<ColorClass> productList =
        (body).map((itemWord) => ColorClass.fromJson(itemWord)).toList();

    return productList;
  }
}

Future<List<CartProduct>?> getCarts(userId) async {
  final response = await http.post(Uri.parse("$url/get-cart"),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"customerId": userId}));

  // print(response.body.isEmpty);

  if (response.statusCode == 200 && response.body.isNotEmpty) {
    List<dynamic> body = jsonDecode(response.body);
    // print(userId);

    List<CartProduct> cartProductList =
        (body).map((itemWord) => CartProduct.fromJson(itemWord)).toList();
    // CartProduct asd;
    // (body).map((itemWord) => {
    //     asd = CartProduct.fromJson(itemWord),
    //     print(asd),
    //   }).toList();

    // print(cartProductList);

    return cartProductList;
  }
  return null;
}

Future<int?> updateQuantityCarts(cartProduct) async {
  final response = await http.post(Uri.parse("$url/update-quantity-cart"),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode(cartProduct));

  if (response.statusCode == 200) {
    return 200;
  }
}

Future<int?> updateCheckedCarts(cartProduct) async {
  final response = await http.post(Uri.parse("$url/update-checked-cart"),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode(cartProduct));

  if (response.statusCode == 200) {
    return 200;
  }
}

Future<int?> deleteCarts(cartId) async {
  final response = await http.post(Uri.parse("$url/delete-cart"),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"cartId": cartId}));

  if (response.statusCode == 200) {
    return 200;
  }
}

Future<List<Address>?> getAddresses(customerId) async {
  final response = await http.post(Uri.parse("$url/get-address"),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"customerId": customerId}));

  if (response.statusCode == 200) {
    List<dynamic> body = jsonDecode(response.body);
    // print(userId);

    List<Address> addressList =
        (body).map((itemWord) => Address.fromJson(itemWord)).toList();

    return addressList;
  }
}

Future<List<RedeemedReward>?> getRedeemedReward(customerId) async {
  final response = await http.post(Uri.parse("$url/get-redeemed-reward"),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"customerId": customerId}));
  // print("Masuk HTTP");
  if (response.statusCode == 200) {
    List<dynamic> body = jsonDecode(response.body);
    // print(userId);

    List<RedeemedReward> promoList =
        (body).map((itemWord) => RedeemedReward.fromJson(itemWord)).toList();

    return promoList;
  }
}

Future<List<Reward>?> getReward() async {
  final response = await http.post(
    Uri.parse("$url/get-reward"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
  );

  if (response.statusCode == 200) {
    List<dynamic> body = jsonDecode(response.body);

    // print(body);

    List<Reward> rewardList =
        (body).map((itemWord) => Reward.fromJson(itemWord)).toList();

    // print((body).map((itemWord) => print(itemWord)));

    return rewardList;
  }
}

Future<List<Wishlist>?> getWishlist(customerId) async {
  final response = await http.post(Uri.parse("$url/get-wishlist"),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"customerId": customerId}));
  // print("Masuk HTTP");
  if (response.statusCode == 200) {
    List<dynamic> body = jsonDecode(response.body);
    // print(userId);

    List<Wishlist> wishlist =
        (body).map((itemWord) => Wishlist.fromJson(itemWord)).toList();

    return wishlist;
  }
}