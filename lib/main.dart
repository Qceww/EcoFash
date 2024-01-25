import 'package:figma/home_page.dart';
import 'package:figma/signin_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// test adel
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
        home: const HomePage());
  }
}
