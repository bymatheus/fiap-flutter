import 'package:flutter/material.dart';

class Multiplicar extends StatefulWidget {
  const Multiplicar({Key? key}) : super(key: key);

  @override
  _MultiplicarState createState() => _MultiplicarState();
}

String valorInicial = "Resultado: ____";

class _MultiplicarState extends State<Multiplicar> {
  TextEditingController input01 = TextEditingController();
  TextEditingController input02 = TextEditingController();

  String strFinal = valorInicial;

  void _calcularSoma() {
    setState(() {
      double n1 = double.parse(input01.text);
      double n2 = double.parse(input02.text);

      double produto = n1 * n2;

      strFinal = 'Resultado: $n1 x $n2 = $produto';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Multiplicador de Números"),
      centerTitle: true,
      backgroundColor: Colors.orange,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("Digite o primeiro número", input01),
          _campo("Digite o segundo número", input02),
          _botao(),
          _texto(strFinal),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo,
          labelStyle: TextStyle(color: Colors.deepOrange)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularSoma,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  _texto(text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: text != valorInicial ? Colors.green : Colors.red,
          fontSize: 25.0),
    );
  }
}
