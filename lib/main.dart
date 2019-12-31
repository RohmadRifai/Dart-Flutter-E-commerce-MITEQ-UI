import 'package:flutter/material.dart';
import 'package:miteq/ui/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miteq',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(13, 59, 105, 1.0),
        accentColor: Color.fromRGBO(51, 114, 176, 1.0),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        //accentColor: Colors.greenAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
