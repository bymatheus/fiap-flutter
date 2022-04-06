import 'package:app_02_contador_pessoas/contador.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContadorPessoas());
}

class ContadorPessoas extends StatelessWidget {
  const ContadorPessoas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Contador(),
    );
  }
}
