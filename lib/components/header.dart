import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Header extends StatelessWidget {
  Header({ this.screenName, this.screenNameSize, this.rightWidget, this.tap });

  final String screenName;
  final double screenNameSize;
  final Widget rightWidget;
  final Function tap;


  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$screenName", style: TextStyle(
            fontSize: screenNameSize,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
          ),),
          Spacer(),
          rightWidget
        ]
    );
  }
}
