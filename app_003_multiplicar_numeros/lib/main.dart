import 'package:app_003_multiplicar_numeros/multiplicar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MultiplicarNumeros());
}

class MultiplicarNumeros extends StatelessWidget {
  const MultiplicarNumeros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Multiplicar(),
    );
  }
}
