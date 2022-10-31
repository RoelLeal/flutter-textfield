import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {

  ListView listView = new ListView(children: <Widget>[
    new ListTile(
      leading: new Icon(Icons.settings),
      title: new Text("Configuración"),
    ),
    new ListTile(
      leading: new Icon(Icons.home),
      title: new Text("Página principal"),
    ),
    new ListTile(
      leading: new Icon(Icons.chevron_right_rounded),
      title: new Text("Siguiente"),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer")
      ),

      drawer: new Drawer(
        child: listView
      ),
    );
  }
}