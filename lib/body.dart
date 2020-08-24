import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class BodyWidget extends StatelessWidget {
  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: errorText == null ? null : errorText()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Observer(builder: (_) {
            return _textField(
              labelText: 'Name',
              onChanged: controller.client.changeName,
              errorText: controller.validateName,
            );
          }),
          Observer(builder: (_) {
            {
              return _textField(
                labelText: 'e-mail',
                onChanged: controller.client.changeEmail,
                errorText: controller.validateEmail,
              );
            }
          }),
          Observer(builder: (_) {
            return _textField(labelText: 'CPF');
          }),
          SizedBox(
            height: 29,
          ),
          Observer(
            builder: (_) {
              return RaisedButton(
                disabledColor: Colors.grey,
                color: Colors.amber,
                onPressed: controller.isValid ? () {} : null,
                child: Text('Salvar'),
              );
            },
          )
        ],
      ),
    );
  }
}
