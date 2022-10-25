import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: MyTextfield()));
}

class MyTextfield extends StatefulWidget {
  const MyTextfield({super.key});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  String inputValue = "";
  final TextEditingController controller = new TextEditingController();
  void onSubmitted(String value) {
    setState(() {
      inputValue = inputValue + "\n" + value;
    });
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Textfields"),
        backgroundColor: Colors.indigo.shade400,
      ),
      body: new Container(
        padding: EdgeInsets.all(25.0),
        child: new Center(
        child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(hintText: "Ingresa un texto"),
            controller: controller,
            onSubmitted: (String value) {
              onSubmitted(value);
            },
          ),
          new Text(
            inputValue,
            style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          )
        ],
      ))),
    );
  }
}
