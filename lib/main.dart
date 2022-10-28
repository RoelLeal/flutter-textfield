import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: Route()));
}

class Route extends StatelessWidget {
  const Route({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Navigator"),
      ),
      body: new Center(
          child: new ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: ((context) => second())));
              },
              child: new Text("Hola"))),
    );
  }
}

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Second"),
        ),
        body: new Center(
            child: new ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: ((context) => Route())));
                },
                child: new Text("Botoncito de vuelta"))));
  }
}
