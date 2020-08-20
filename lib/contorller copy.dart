import 'package:mobx/mobx.dart';

class ControllerCopy {
  // inicia o Observable
  var _counter = Observable(0);
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;

  ControllerCopy() {
    increment = Action(_increment);

    autorun((_) {
      print(counter);
    });
  }

//Ação que será executada
  Action increment;
  _increment() {
    counter++;
  }
}
