import 'package:agrostreetfindertwo/src/ui/pages/load_field_page.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../pages/load_point_page.dart';

class HomePageController extends ControllerMVC {
  HomePageController._();

  static HomePageController _this = HomePageController._();
  static HomePageController get con => _this;

  factory HomePageController() {
    if (_this == null) _this = HomePageController._();
    return _this;
  }

//   CONSULTAR
   Widget drawerController(Widget child, DrawerAlignment alignment){
    return DrawerController(alignment: alignment,
    child: child,);
   }

   void goToLoadFieldPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => const LoadFieldPage(),
    )
    );
  }
   void goToLoadPointPage(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoadPointPage(),
        )
    );
  }

}



  // int get counter => Model.counter;
  // void incrementCounter() => Model.incrementCounter();
  // void decrementCounter() => Model.decrementCounter();
// }