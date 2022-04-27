import 'package:flutter/material.dart';
import 'package:app_007_abertura_conta_bancaria/bankForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 07 - Abertura de Conta Bancária',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: BankForm(),
    );
  }
}
