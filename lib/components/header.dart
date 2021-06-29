import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Header extends StatelessWidget {
  Header({ this.screenName, this.rightWidget, this.tap });

  final String screenName;

  final Widget rightWidget;
  final Function tap;


  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$screenName", style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),),
          Spacer(),
          rightWidget
        ]
    );
  }
}
