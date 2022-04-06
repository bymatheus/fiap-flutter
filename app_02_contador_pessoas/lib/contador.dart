import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int acum = 0;

  void _handleAcum(String operation) {
    setState(() {
      if (operation == 'add') {
        acum += 1;
      } else {
        if (acum > 0) {
          acum -= 1;
        }
      }
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
      title: Text("Contador de Pessoas na Frente da Loja"),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[_texto(acum.toString()), _botoes()],
      ),
    );
  }

  _botoes() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _botao('add', '+', Colors.green),
          _botao('sub', '-', Colors.red)
        ],
      ),
    );
  }

  _botao(operation, text, selectedColor) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
        height: 50.0,
        child: RaisedButton(
          onPressed: () => {_handleAcum(operation)},
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: selectedColor,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
    );
  }
}
