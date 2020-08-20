import 'package:mobx/mobx.dart';
// *Include generated file
part 'controller.g.dart';

// * This is the class used by rest of your codebase
class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  // *inicia o Observable
  @observable
  int counter = 0;

//Ação que será executada
  @action
  increment() {
    counter++;
  }
}
