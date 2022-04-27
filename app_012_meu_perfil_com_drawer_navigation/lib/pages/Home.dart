import 'package:flutter/material.dart';
import 'package:app_012_meu_perfil_com_drawer_navigation/pages/Pessoal.dart';
import 'package:app_012_meu_perfil_com_drawer_navigation/pages/Formacao.dart';
import 'package:app_012_meu_perfil_com_drawer_navigation/pages/Experiencia.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final telas = [
    Center(child: Text('Tela Home')),
    Pessoal(),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo[900],
              ),
              accountName: Text('Matheus Camargo'),
              accountEmail: Text('FIAP - RM86571'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://ih1.redbubble.net/image.878005488.0727/st%2Csmall%2C215x235-pad%2C210x230%2Cf8f8f8.jpg'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              subtitle: Text('Tela inicial'),
              trailing: Icon(Icons.home),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Pessoal'),
              subtitle: Text('Informações Pessoais'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              subtitle: Text('Formação Acadêmica e Cursos'),
              trailing: Icon(Icons.grade_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiências'),
              subtitle: Text('Experiências Profissionais'),
              trailing: Icon(Icons.lightbulb_outline),
              onTap: () {
                setState(() {
                  _currentPage = 3;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("App 12 - Meu Perfil com Drawer Navigation"),
      centerTitle: true,
      backgroundColor: Colors.indigo[600],
    );
  }
}
