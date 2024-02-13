import 'dart:convert';

import 'package:http/http.dart' as http;

String url = "http:/10.0.2.2:8000/api";

Future<int?> createUser(user) async {
  final response = await http.post(
    Uri.parse("$url/register-user"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept":"application/json",
    },
    body: jsonEncode(user),
  );

  if (response.statusCode == 200){
    print(user);
    return 0;
    // return 200;
  }

  print("Request Failed!");
  return 0;
}