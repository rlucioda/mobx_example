import 'package:mobx/mobx.dart';

import 'models/client.dart';
// *Include generated file
part 'controller.g.dart';

// * This is the class used by rest of your codebase
class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  var client = Client();
}
