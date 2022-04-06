import 'package:flutter/material.dart';
import 'package:app_006_jogo_numero_aleatorio/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 06 - Jogo do Número Aleatório',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
