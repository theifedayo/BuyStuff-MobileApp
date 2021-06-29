import 'dart:async';
import 'package:buystuff/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:show_up_animation/show_up_animation.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final splashDelay = 3;
  Widget page = LoginScreen();
  final storage = new FlutterSecureStorage();


  @override
  void initState() {
    super.initState();
    _loadWidget();
    checkLogin();
  }



  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: page));
  }

  void checkLogin() async {
    String token = await storage.read(key: "token");
    if(token != null){
      setState(() {
        //page = Main();
      });
    }else{
      setState(() {
        page = LoginScreen();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF5F5F7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ShowUpAnimation(
              delayStart: Duration(seconds: 0),
              animationDuration: Duration(seconds: 1),
              curve: Curves.bounceIn,
              direction: Direction.vertical,
              offset: 0.5,
              child: Center(child: Container(
                  width: MediaQuery.of(context).size.width*0.35,
                  child: Image.asset('images/buystuff.png',)
              ))
          ),

        ],
      ),
    );
  }
}