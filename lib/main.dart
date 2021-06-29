import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of acanode.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(

        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Colors.white,
        accentColor: Color(0xFF001F3E),
        textTheme: TextTheme(body1: TextStyle(color: Colors.black),),

      ),
      home: SplashScreen(),
    );
  }
}