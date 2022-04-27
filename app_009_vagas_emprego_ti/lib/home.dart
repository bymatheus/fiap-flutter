import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    ));
  }

  _titulo() {
    return AppBar(
      title: const Text('App 09 - Vagas de Emprego para TI'),
      backgroundColor: Colors.deepOrange[600],
    );
  }

  _corpo() {
    return SingleChildScrollView(
        child: new Column(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Analista de Sistemas"),
            ),
            Container(
              color: Colors.grey[300],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Back End"),
            ),
            Container(
              color: Colors.grey[200],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Front End"),
            ),
            Container(
              color: Colors.grey[300],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Mobile"),
            ),
            Container(
              color: Colors.grey[200],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("UX Designer"),
            ),
            Container(
              color: Colors.grey[300],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Data Science com Python"),
            ),
            Container(
              color: Colors.grey[200],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Full Stack"),
            ),
            Container(
              color: Colors.grey[300],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Security Analyst"),
            ),
            Container(
              color: Colors.grey[200],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Web"),
            ),
            Container(
              color: Colors.grey[300],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Web com PHP"),
            ),
            Container(
              color: Colors.grey[200],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Web com Ruby"),
            ),
            Container(
              color: Colors.grey[300],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Web com Java"),
            ),
            Container(
              color: Colors.grey[200],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Web com Javascript"),
            ),
            Container(
              color: Colors.grey[300],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Web com C#"),
            ),
            Container(
              color: Colors.grey[200],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Web com C++"),
            ),
            Container(
              color: Colors.grey[300],
              height: 125.0,
              alignment: Alignment.center,
              child: _card("Desenvolvedor Web com C"),
            ),
          ],
        )
      ],
    ));
  }

  _card(vaga) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: _conteudo(vaga),
      ),
    );
  }

  _conteudo(vaga) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        "Vaga de $vaga",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.linear_scale, color: Colors.orange),
              Text("$vaga",
                  style: TextStyle(color: Colors.black, fontSize: 15.0))
            ],
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 5.0),
            child: RaisedButton(
              color: Colors.grey[700],
              textColor: Colors.white,
              padding: EdgeInsets.all(15),
              onPressed: () {},
              child: const Text("Aplicar para vaga"),
            ),
          )
        ],
      ),
    );
  }
}
