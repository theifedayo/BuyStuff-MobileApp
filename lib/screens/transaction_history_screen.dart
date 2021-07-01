import 'package:flutter/material.dart';
import 'package:buystuff/components/header.dart';
import 'package:buystuff/components/transaction_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class TransactionHistoryScreen extends StatefulWidget {
  @override
  _TransactionHistoryScreenState createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Header(screenName: "Purchase History", rightWidget: Text("Create new card", style: TextStyle(
          fontSize: 13,
          color: Colors.green,
          fontFamily: 'Montserrat',
        ),),),
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: ListView(
        children: [
          VisaCard(),
          TransactionCard(activityContainerColor: Color(0xFFF0FFF0), activityIcon: FontAwesomeIcons.arrowDown, productName: '2 Beret', date: 'July 01, 2021', price: '+NGN2,500.00', activity: 'Sold', activityColor: Colors.green[300],),
          TransactionCard(activityContainerColor: Colors.red[50], activityIcon: FontAwesomeIcons.arrowUp, productName: '1 Vitafoam Vita Corona Mattress', date: 'June 26, 2021', price: '-NGN2,500.00', activity: 'Bought', activityColor: Colors.red[300],),
          TransactionCard(activityContainerColor: Color(0xFFF0FFF0), activityIcon: FontAwesomeIcons.arrowDown, productName: '3 Thunderbolt 3 Type-C Adapter', date: 'June 12, 2021', price: '+NGN15,000.00', activity: 'Sold', activityColor: Colors.green[300],),
          TransactionCard(activityContainerColor: Color(0xFFF0FFF0), activityIcon: FontAwesomeIcons.arrowDown, productName: '1 New Ft Horizontal Window Day And Night Blinds', date: 'June 01, 2021', price: '+NGN14,500.00', activity: 'Sold', activityColor: Colors.green[300],),
          TransactionCard(activityContainerColor: Colors.red[50], activityIcon: FontAwesomeIcons.arrowUp, productName: '2 Vitafoam Vita Corona Mattress', date: 'June 26, 2021', price: '-NGN23,200.00', activity: 'Bought', activityColor: Colors.red[300],),
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
}

