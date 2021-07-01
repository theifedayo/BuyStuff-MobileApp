import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
      child: Container(
          height: 80,
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
                        child: Center(child: Icon(FontAwesomeIcons.arrowDown, color: Colors.green[300], size: 20,)),
                        decoration: new BoxDecoration(
                          color: Color(0xFFF0FFF0),
                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                        ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("2 Berets (Tony store)", style: TextStyle(
                              fontSize: 14,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),),
                            SizedBox(height: 5,),
                            Text("June 26, 2021", style: TextStyle(
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
                      Text("+NGN 2500.00", style: TextStyle(
                        fontSize: 14,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),),
                      SizedBox(height: 5,),
                      Text("Sold", style: TextStyle(
                        fontSize: 12,
                        color: Colors.green[300],
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
