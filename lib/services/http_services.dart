import 'dart:convert';

import 'package:figma/classes/colors.dart';
import 'package:figma/classes/product.dart';
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

Future<int> verifyUser(user) async {  
  final response = await http.post(
    Uri.parse("$url/login-user"),
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

    // print(taskList);

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


