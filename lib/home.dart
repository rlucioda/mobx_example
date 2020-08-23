import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/controller.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    _textField({String labelText, onChanged}) {
      return TextField(
        onChanged: onChanged,
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: labelText),
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
            Text(
              'You have pushed the button this many times:',
            ),
            // Wrapping in the Observer will automatically re-render on changes to counter.value
          ],
        ),
      ),
    );
  }
}
