import 'dart:convert';

import 'package:figma/classes/colors.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/classes/cartProduct.dart';
import 'package:figma/classes/user.dart';
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

    List<Product> productList = (body).map((itemWord) => Product.fromJson(itemWord)).toList();

    // print((body).map((itemWord) => print(itemWord)));

    return productList;
  }
}

Future<Product?> getDetailedProducts(product) async {  
  final response = await http.post(
    Uri.parse("$url/get-detailed-product"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    body: jsonEncode(product)
  );  

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

    List<ColorClass> productList = (body).map((itemWord) => ColorClass.fromJson(itemWord)).toList();

    return productList;
  }
}

Future<List<CartProduct>?> getCarts(userId) async {  
  final response = await http.post(
    Uri.parse("$url/get-cart"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    body: jsonEncode({"customerId": userId})  
  );  

  if (response.statusCode == 200) {
    List<dynamic> body = jsonDecode(response.body);
    // print(userId);
    // print("body $body[0]['cartId']");

    List<CartProduct> cartProductList = (body).map((itemWord) => CartProduct.fromJson(itemWord)).toList();
    // CartProduct asd;
    // (body).map((itemWord) => {
    //     asd = CartProduct.fromJson(itemWord),
    //     print(asd),
    //   }).toList();

    // print(cartProductList);

    return cartProductList;
  }
}

Future<int?> updateQuantityCarts(cartProduct) async {  
  final response = await http.post(
    Uri.parse("$url/update-quantity-cart"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    body: jsonEncode(cartProduct)  
  );  

  if (response.statusCode == 200) {

  }
}

Future<int?> updateCheckedCarts(cartProduct) async {  
  final response = await http.post(
    Uri.parse("$url/update-checked-cart"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    body: jsonEncode(cartProduct)  
  );  

  if (response.statusCode == 200) {

  }
}


