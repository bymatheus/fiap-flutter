import 'package:flutter/material.dart';
import 'package:app_013_meu_perfil_com_bottom_navigation_bar/pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 13 - Meu Perfil com Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
