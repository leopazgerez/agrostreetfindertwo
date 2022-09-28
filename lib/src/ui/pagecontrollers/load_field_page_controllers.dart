import 'package:mvc_pattern/mvc_pattern.dart';

class LoadFieldPageController extends ControllerMVC {
  LoadFieldPageController._();

  static LoadFieldPageController _this = LoadFieldPageController._();

  static LoadFieldPageController get con => _this;

  factory LoadFieldPageController() {
    if (_this == null) _this = LoadFieldPageController._();
    return _this;
  }
}