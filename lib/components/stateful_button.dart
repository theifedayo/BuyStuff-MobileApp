import 'package:flutter/material.dart';


class StatefulButton extends StatelessWidget {
  StatefulButton({this.onPress, this.loading, @required this.color});

  final Function onPress;
  final Widget loading;
  final Color color;

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
            color: color,//Color(0xFF1CCF7F),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                    loading,
                  ],
                )
            )
        ),
      ),
    );
  }
}