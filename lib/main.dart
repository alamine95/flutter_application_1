import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency_convert_material_page.dart';
 
void main() {
  runApp(const MyApp());
}

// Types of Widgets
// 1. StatlessWidget
// 2. StatlefulWidget

// State

// 1. Material Design by google
// 2. Cupertino Design by Apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConvertMaterialPage(),
    );
  }
}