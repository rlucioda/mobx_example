import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/controller.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Controller();

  ///

  @override
  Widget build(BuildContext context) {
    _textField({String labelText, onChanged, String Function() errorText}) {
      return TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText,
            errorText: errorText == null ? null : errorText()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(builder: (_) {
              return _textField(
                  labelText: 'Name', onChanged: controller.client.changeName);
            }),
            _textField(labelText: 'e-mail'),
            _textField(labelText: 'CPF'),
          ],
        ),
      ),
    );
  }
}
