import 'package:app_011_abertura_conta_bancaria_com_duas_telas/pages/BankForm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App 11 - Abertura de Conta Bancária com duas telas',
        debugShowCheckedModeBanner: false,
        home: BankForm());
  }
}
