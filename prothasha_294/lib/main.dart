import 'package:flutter/material.dart';
//import 'package:prothasha_294/HomePage.dart';
import 'package:prothasha_294/HomePage.dart';
//import 'package:prothasha_294/listview_page.dart';
//import 'package:prothasha_294/calculator_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      //home: CalculatorPage(),
      home: HomePage(),
      //home:ListviewPage(),
    );
  }
}