import 'package:flutter/material.dart';
import 'package:buystuff/components/stateless_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        leadingWidth: 0,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 10),
                child: GestureDetector(child: Icon(Icons.chevron_left, color: Colors.black, size: 35,), onTap: (){
                  Navigator.pop(context);
                },),
              ),
              Text("Checkout", style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),),
              Spacer(),

            ]
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: ListView(
        children: [
          VisaCard(),
          SizedBox(height: 50,),
          CheckOutDetails(),
          SizedBox(height: 50,),
          StatelessButton(buttonText: "Pay Now  💳", buttonColor: Color(0xFF001F3E))
        ],
      ),
    );
  }

  Widget VisaCard(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Container(
          height: MediaQuery.of(context).size.height*0.25,
          padding: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("NGN 2 236 000.00", style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),),
                    Icon(Icons.wifi, size: 24, color: Colors.white,)
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Text("5450 7879 1234 5678", style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Text("Valid till 10/25", style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          //fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),),
                        SizedBox(height: 20,),
                        Text("IFEDAYO ADESIYAN", style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),),
                      ],
                    ),
                    Spacer(),
                    Text("VISA", style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),),
                  ],
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: Colors.black87,
          )
      ),
    );
  }

  Widget CheckOutDetails(){
    return Column(
      children: [
        Text("You're currently paying from your visa card", style: TextStyle(
            fontSize: 15,
            color: Colors.black54,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Container(
          width: MediaQuery.of(context).size.width*0.6,
          height: MediaQuery.of(context).size.height*0.07,
          child: Center(
            child: Text("NGN 122 400.00", style: TextStyle(
                fontSize: 23,
                color: Color(0xFF001F3E),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold
            ),),
          ),
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(70.0),
            color: Colors.blue[50],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Text("Switch to input bank details", style: TextStyle(
            fontSize: 15,
            color: Colors.green[400],
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold
        ),),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.shoppingCart, color: Colors.red[300],),
            SizedBox(width: MediaQuery.of(context).size.width*0.1,),
            Icon(FontAwesomeIcons.arrowRight, color: Colors.black45,),
            SizedBox(width: MediaQuery.of(context).size.width*0.1,),
            Icon(FontAwesomeIcons.truckPickup, color: Colors.green[300],),
          ],
        )
      ],
    );
  }
}
