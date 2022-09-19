import 'package:agrostreetfindertwo/src/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AgroStreetFinderApp());
}

class AgroStreetFinderApp extends StatelessWidget {
  const AgroStreetFinderApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorDark: const Color(0xFF689F38),
        primaryColorLight: const Color(0xFFDCEDC8),
        primaryColor: const Color(0xFF8BC34A),
        dividerColor: const Color(0xFFBDBDBD), 
        fontFamily: 'Montserrat',
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary:  Color(0xFF8BC34A),
            onPrimary:  Colors.black,
            secondary: Color(0xFFDCEDC8),
            onSecondary:  Colors.black,
            error:  Colors.red,
            onError: Colors.red,
            background: Colors.white,
            onBackground: Colors.white,
            surface: Colors.white54,
            onSurface: Colors.white54
        ),
        textTheme:const  TextTheme(
          headline3: TextStyle(fontWeight: FontWeight.bold),
        )
      ),
      home: const HomePage(),
    );
  }

}

