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
        title: Header(screenName: "Cart", rightWidget: Image.asset(
          "images/search-icon.png",
          width: MediaQuery.of(context).size.width*0.12,
        )),
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20,),
        Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: Container(
          //height: 80,
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Center(child: Image.asset("images/buystuff.png", width: 30,)), //Icon(FontAwesomeIcons.arrowDown, color: Colors.green[300]
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                            ),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.45,
                                  child: Text("2 Beret acetylne", style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                  ),),
                                ),
                                SizedBox(height: 5,),
                                Text("Lebaiqi Store-Sea-CODx", style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),),
                                SizedBox(height: 5,),
                                Text("NGN 2000.00", style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),

                      //SizedBox(width: 60,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Text("❌", style: TextStyle(
                          //   fontSize: 20,
                          //   //color: Colors.black45,
                          //   fontWeight: FontWeight.bold,
                          //   fontFamily: 'Montserrat',
                          // ),),
                          Container(
                            width: 50,
                            height: 50,
                            child: Center(
                              child: Icon(
                                Icons.close, size: 35, color: Colors.red,
                              )
                            ),
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(70.0),
                              color: Colors.red[50],
                            ),
                          )
                        ],
                      )
                    ],),

                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              )
          ),
        )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            label: const Text('NGN 256 000.00', style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),),
            icon: const Icon(Icons.shopping_cart, color: Colors.white, size: 30,),
            backgroundColor: Color(0xFF001F3E),
          ),
        ],
      ),
    );
  }
}
