import 'package:flutter/material.dart';


class ProductCategory extends StatelessWidget {
  ProductCategory({ @required this.emoji, @required this.categoryName, @required this.onPress});

  final String emoji;
  final String categoryName;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$emoji", style: TextStyle(
                fontSize: 45,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              Text("$categoryName", textAlign: TextAlign.center, style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat',
              ),),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.0),
            color: Colors.white,
          )
      ),
      onTap: onPress,
    );
  }
}
