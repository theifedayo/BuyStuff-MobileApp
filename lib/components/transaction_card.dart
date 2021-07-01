import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class TransactionCard extends StatelessWidget {
  TransactionCard({
    this.activityContainerColor,
    this.activityIcon,
    this.productName,
    this.date,
    this.price,
    this.activity,
    this.activityColor
});

  final Color activityContainerColor;
  final IconData activityIcon;
  final String productName;
  final String date;
  final String price;
  final String activity;
  final Color activityColor;


  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        child: Center(child: Icon(activityIcon, color: activityColor, size: 20,)), //Icon(FontAwesomeIcons.arrowDown, color: Colors.green[300]
                        decoration: new BoxDecoration(
                          color: activityContainerColor,//Color(0xFFF0FFF0),
                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                        ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.45,
                              child: Text("$productName", style: TextStyle(
                                fontSize: 14,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),),
                            ),
                            SizedBox(height: 5,),
                            Text("$date", style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //SizedBox(width: 60,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("$price", style: TextStyle(
                        fontSize: 14,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),),
                      SizedBox(height: 5,),
                      Text("$activity", style: TextStyle(
                        fontSize: 12,
                        color: activityColor,//Colors.green[300],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),),
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
    );
  }
}
