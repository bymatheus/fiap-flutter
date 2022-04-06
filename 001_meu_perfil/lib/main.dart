import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu Perfil"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "Meu nome é Matheus Camargo \n Sou desenvolvedor fullstack a mais de cinco anos \n Tenho 26 anos \n Sou formado em Direção de Arte.",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 31, 32, 32),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
