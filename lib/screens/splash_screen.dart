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

  final splashDelay = 5;
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
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset("images/splash-background.png",
                fit: BoxFit.fitHeight,
                height: MediaQuery.of(context).size.height*1,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*0.35,
                left: MediaQuery.of(context).size.width*0.35,
                child:Center(child: Container(
                    child: Image.asset('images/buystuff.png',)
                )),
              )
            ],
          ),
        ),
    );
  }
}