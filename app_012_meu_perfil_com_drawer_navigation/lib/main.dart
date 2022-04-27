import 'package:flutter/material.dart';
import 'package:app_012_meu_perfil_com_drawer_navigation/pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 12 - Meu Perfil com Drawer Navigation',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
