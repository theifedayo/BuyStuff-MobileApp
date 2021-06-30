import 'package:flutter/material.dart';
import 'package:buystuff/components/header.dart';
import 'package:buystuff/components/stateless_button.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        leadingWidth: 0,
        title: Header(screenName: "My Profile", rightWidget: Text("")),
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: ListView(
        children: [
          MainProfile(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Container(
                height: MediaQuery.of(context).size.height*0.4,
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20.0,
                      ),
                    ]
                ),
            ),
          ),

        ],
      ),
    );
  }

  Widget MainProfile(){
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Colors.grey,
                  image: new DecorationImage(
                    image: new AssetImage('images/profile.png',),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                  border: new Border.all(
                    color: Colors.grey[200],
                    width: 2.0,
                  ),

                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ifedayo", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),),
                    Text("adesiyanifedayo@gmail.com", style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        color: Colors.grey
                    ),)
                  ]

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width*0.24,
                height: MediaQuery.of(context).size.height*0.05,
                child: Center(child: Text("Edit Profile")),
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2.0,
                      ),
                    ]
                ),

              ),
            )
          ],
        )
      ],
    );
  }
}
