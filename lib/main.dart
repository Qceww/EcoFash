import 'package:figma/pages/blog_detailed_view.dart';
import 'package:figma/pages/blog_list_view.dart';
import 'package:figma/pages/cart_page.dart';
import 'package:figma/pages/reward.dart';
import 'package:figma/pages/signin_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// test ms
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Figma',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const Reward());
  }
}
