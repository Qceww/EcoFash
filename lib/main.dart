import 'package:figma/pages/address_page.dart';
import 'package:figma/pages/blog_detailed_view.dart';
import 'package:figma/pages/cart_page.dart';
import 'package:figma/pages/home_page.dart';
import 'package:figma/pages/more_reward.dart';
import 'package:figma/pages/order_page.dart';
import 'package:figma/pages/shop_detailed_view.dart';
import 'package:figma/pages/shop_grid_view.dart';
import 'package:figma/pages/signin_page.dart';

// import 'package:figma/pages/cart_page.dart';
import 'package:figma/pages/cart_page.dart';
import 'package:figma/pages/checkout_page.dart';
import 'package:figma/pages/paymentSuccess.dart';
import 'package:figma/widgets/address_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
      home: HomePage(),
    );
  }
}
