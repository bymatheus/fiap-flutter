import 'package:flutter/material.dart';
import 'package:app_004_alcool_gasolina/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 04 - Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
