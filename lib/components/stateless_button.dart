import 'package:flutter/material.dart';

class StatelessButton extends StatelessWidget {
  StatelessButton({@required this.buttonText, this.onPress, this.buttonColor});

  final String buttonText;
  final Function onPress;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        //height: MediaQuery.of(context).size.height*0.09,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            color: buttonColor,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                    Text(buttonText,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: MediaQuery.of(context).size.height*0.018,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
            )
        ),
      ),
    );
  }
}