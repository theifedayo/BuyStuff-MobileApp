import 'package:flutter/material.dart';
import 'package:buystuff/components/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Header(screenName: "Cart", rightWidget: Icon(FontAwesomeIcons.search, color: Colors.black, size: 20,)),
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