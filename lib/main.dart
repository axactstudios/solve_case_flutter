import 'package:flutter/material.dart';
import 'package:solvecaseflutter/start.dart';

import 'package:splashscreen/splashscreen.dart';
import 'menu_frame.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Start(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: AfterSplash(),
      image: Image.asset(
        'assets/solvee.png',
      ),
      photoSize: 100.0,
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      loaderColor: Colors.redAccent,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 30, 30, 30),
        accentColor: Color.fromRGBO(133, 113, 255, 1.0),
      ),
      home: Start(),
    );
  }
}
