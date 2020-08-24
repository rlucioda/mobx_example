import 'package:mobx/mobx.dart';

import 'models/client.dart';
// *Include generated file
part 'controller.g.dart';

// * This is the class used by rest of your codebase
class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'este campo é obrigatório';
    } else if (client.name.length < 3) {
      return 'nome deve ter pelo menos três caracteres';
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'este campo é obrigatório';
    } else if (!client.email.contains("@")) {
      return 'esse não é um email valido';
    }
    return null;
  }

  dispose() {
    print('dispose');
  }
}
