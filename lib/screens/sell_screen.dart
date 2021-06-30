import 'package:flutter/material.dart';
import 'package:buystuff/components/header.dart';


class SellScreen extends StatefulWidget {
  @override
  _SellScreenState createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Header(screenName: "Sell", rightWidget: Text("Add a product", style: TextStyle(
          fontSize: 13,
          color: Colors.green,
          fontFamily: 'Montserrat',
        ),),),
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [

          ],
        ),
      ),
    );
  }
}
