import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_ui/screens/main.dart';
import 'package:furniture_ecommerce_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData,
      home: const MainPage(),
    );
  }
}
