import 'package:flutter/material.dart';


class CartCard extends StatelessWidget {

  CartCard({
    this.productImage,
    this.productQuantity,
    this.productName,
    this.storeName,
    this.price,
  });

  final String productImage;
  final String productQuantity;
  final String productName;
  final String storeName;
  final String price;



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
                        width: 90,
                        height: 90,
                        child: Center(child: Image.asset("$productImage", width: 30,)), //Icon(FontAwesomeIcons.arrowDown, color: Colors.green[300]
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
                              child: Text("$productQuantity $productName", style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),),
                            ),
                            SizedBox(height: 5,),
                            Text("$storeName", style: TextStyle(
                              fontSize: 14,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),),
                            SizedBox(height: 5,),
                            Text("NGN $price", style: TextStyle(
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
                      Container(
                        width: 40,
                        height: 40,
                        child: Center(
                            child: Icon(
                              Icons.close, size: 25, color: Colors.red,
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
    );
  }
}
