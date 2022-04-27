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
      title: const Text('App 08 - Anúncio de Produtos'),
      backgroundColor: Colors.blue[900],
    );
  }

  _corpo() {
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(32),
            color: Colors.grey[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _texto(),
                _carrosel(),
              ],
            )));
  }

  _texto() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
      width: double.maxFinite,
      child: Text(
        'Produtos: ',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _itemCarrosel('images/produto1.jpg'),
          _itemCarrosel('images/produto2.jpg'),
          _itemCarrosel('images/produto3.jpg'),
          _itemCarrosel('images/produto4.jpg'),
          _itemCarrosel('images/produto5.jpg'),
          _itemCarrosel('images/produto6.jpg'),
          _itemCarrosel('images/produto7.jpg'),
          _itemCarrosel('images/produto8.jpg'),
          _itemCarrosel('images/produto9.jpg'),
          _itemCarrosel('images/produto10.jpg'),
        ],
      ),
    );
  }

  _itemCarrosel(String imagem) {
    return Flex(direction: Axis.vertical, children: <Widget>[
      _foto(imagem),
      _botao(),
    ]);
  }

  _foto(imagem) {
    return (Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      height: 200,
      width: 200,
      child: Image.asset(imagem),
    ));
  }

  _botao() {
    return (Container(
      margin: EdgeInsets.only(top: 16),
      width: 200,
      child: RaisedButton(
        color: Colors.green[800],
        textColor: Colors.white,
        padding: EdgeInsets.all(15),
        child: const Text('Comprar'),
        onPressed: () {},
      ),
    ));
  }
}
