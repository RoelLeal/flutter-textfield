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
  String _inputValue = "", inputValue = "";
  final TextEditingController controller = new TextEditingController();
  void onSubmitted(String value) {
    setState(() {
      inputValue = inputValue + "\n" + value;
    });
    controller.clear();
    _showAlert(value);
  }

  void _showAlert(value) {
    AlertDialog alert = new AlertDialog(
      title: new Text("Advertencia"),
      content: new Text("Eri gei?"),
      actions: <Widget>[
        new TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            }),
        new TextButton(
            child: Text("NO"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  void onChange(value) {
    setState(() {
      _inputValue = value;
    });
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
                onChanged: (String value) {
                  onChange(value);
                },
              ),
              new ElevatedButton(
                child: new Text("Presioname"),
                onPressed: () {
                  onSubmitted(_inputValue);
                },
              ),
              new Text(
                inputValue,
                style:
                    new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              )
            ],
          ))),
    );
  }
}
