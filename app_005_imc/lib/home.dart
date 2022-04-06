import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  String _infoText = "Informe seus dados";

  void _calculate() {
    setState(() {
      double? weight = double.tryParse(weightController.text);
      double? height = double.tryParse(heightController.text);

      if (weight == null || height == null) {
        _infoText =
            "Preencha os campos com números válidos. (Adicionar . se necessário)";
      } else {
        height = height / 100;

        double imc = weight / (height * height);
        if (imc < 18.6) {
          _infoText = "Abaixo do Peso (${imc.toStringAsPrecision(4)})";
        } else if (imc >= 18.6 && imc < 24.9) {
          _infoText = "Peso Ideal (${imc.toStringAsPrecision(4)})";
        } else if (imc >= 24.9 && imc < 29.9) {
          _infoText = "Levemente Acima do Peso (${imc.toStringAsPrecision(4)})";
        } else if (imc >= 29.9 && imc < 34.9) {
          _infoText = "Obesidade Grau I (${imc.toStringAsPrecision(4)})";
        } else if (imc >= 34.9 && imc < 39.9) {
          _infoText = "Obesidade Grau II (${imc.toStringAsPrecision(4)})";
        } else if (imc >= 40) {
          _infoText = "Obesidade Grau III (${imc.toStringAsPrecision(4)})";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular IMC"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  height: 200,
                  width: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Calcule seu IMC",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite seu peso (kg). Ex: 65.5",
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
                controller: weightController,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite sua altura (cm). Ex: 175",
                ),
                style: TextStyle(
                  fontSize: 18,
                ),
                controller: heightController,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Verificar",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: _calculate,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  _infoText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
