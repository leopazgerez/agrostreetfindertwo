import 'package:mvc_pattern/mvc_pattern.dart';

class LoadTarckPageController extends ControllerMVC {
  LoadTarckPageController._();

  static LoadTarckPageController _this = LoadTarckPageController._();

  static LoadTarckPageController get con => _this;

  factory LoadTarckPageController() {
    if (_this == null) _this = LoadTarckPageController._();
    return _this;
  }
  void saveField(){}
  void onPressedCancel(){}
  void backToHomePage(){}
}