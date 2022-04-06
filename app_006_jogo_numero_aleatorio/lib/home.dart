import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _userNumberController = TextEditingController();

  String _textoResultado = "";

  void _matchValues() {
    int? userNumber = int.tryParse(_userNumberController.text);
    int randomNumber = Random().nextInt(11);

    if (userNumber == null) {
      _textoResultado = 'Valor inválido. Digite um valor válido';
    } else if (userNumber < 0 || userNumber > 10) {
      _textoResultado = 'Valor inválido. Digite um valor entre 0 e 10';
    } else if (userNumber == randomNumber) {
      _textoResultado =
          'Parabéns! Você acertou! O número sorteado foi $randomNumber';
    } else {
      _textoResultado =
          'Que pena. Você errou! O número sorteado foi $randomNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App 06 - Jogo do Número Aleatório'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0-AE6hUFU9_jg0fUVypIP34Gp9C8cwX7wsnRy_qC_35R47wL9NM5YHxk_LLpEc7KmqtY&usqp=CAU',
                height: 200,
                width: 200,
              ),
            ),
            TextField(
              controller: _userNumberController,
              decoration: InputDecoration(
                labelText: 'Digite um número entre 0 e 10',
              ),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: const Text('Descobrir'),
                onPressed: () {
                  _matchValues();
                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                _textoResultado,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
