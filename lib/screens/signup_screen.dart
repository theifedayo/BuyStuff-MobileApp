import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:buystuff/components/stateless_button.dart';
import 'package:page_transition/page_transition.dart';
import 'login_screen.dart';
import 'package:buystuff/components/stateful_button.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {


  bool circular = false;
  final storage = new FlutterSecureStorage();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String emailerrorText;
  String passworderrorText;
  bool validate = false;
  bool vis = true;
  final globalKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Header(),
            SignupForm(),
            Footer()
          ],
        ),
      ),
    );
  }



  //Header => Back button & Large Text
  Widget Header(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: GestureDetector(child: Icon(Icons.chevron_left, color: Colors.black, size: 35,), onTap: (){
                Navigator.pop(context);
              },),
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text("Create an account", style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Text("Buy stuffs you really need", style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),),
        ),
      ],
    );
  }

  //SignupForm => All input fields for creating an account
  Widget SignupForm(){
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.07,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: TextFormField(
            //controller: usernameController,
            validator: (value){
              if(value.isEmpty){
                return "username is required";
              }else if(!value.contains('@')){
                return 'invalid email';
              }
              return null;
            },
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'RocknRollOne'
            ),
            decoration: InputDecoration(
              //errorText: validate ? emailerrorText: null,
                prefixIcon: Icon(Icons.person, color: Colors.grey,),
                filled: true,
                fillColor: Color(0xFFEFF0F6),
                hintText: 'Username',
                hintStyle: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    borderSide: BorderSide.none
                )
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: TextFormField(
            //controller: usernameController,
            validator: (value){
              if(value.isEmpty){
                return "email cannot be empty";
              }else if(!value.contains('@')){
                return 'invalid email';
              }
              return null;
            },
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'RocknRollOne'
            ),
            decoration: InputDecoration(
              //errorText: validate ? emailerrorText: null,
                prefixIcon: Icon(Icons.email, color: Colors.grey,),
                filled: true,
                fillColor: Color(0xFFEFF0F6),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    borderSide: BorderSide.none
                )
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: TextFormField(
            controller: passwordController,
            validator: (value){
              if(value.isEmpty){
                return "password cannot be empty";
              }
              return null;
            },
            //obscureText: vis,
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'RocknRollOne'
            ),
            decoration: InputDecoration(
              //errorText: validate ? passworderrorText: null,
                prefixIcon: Icon(Icons.lock_open, color: Colors.grey,),
                suffixIcon: IconButton(icon: Icon(vis?Icons.visibility_off: Icons.visibility), onPressed: (){
                  setState(() {
                    //vis = !vis;
                  });
                },),
                filled: true,
                fillColor: Color(0xFFEFF0F6),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    borderSide: BorderSide.none
                )
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: TextFormField(
            controller: passwordController,
            validator: (value){
              if(value.isEmpty){
                return "password cannot be empty";
              }
              return null;
            },
            //obscureText: vis,
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'RocknRollOne'
            ),
            decoration: InputDecoration(
              //errorText: validate ? passworderrorText: null,
                prefixIcon: Icon(Icons.lock_open, color: Colors.grey,),
                suffixIcon: IconButton(icon: Icon(vis?Icons.visibility_off: Icons.visibility), onPressed: (){
                  setState(() {
                    //vis = !vis;
                  });
                },),
                filled: true,
                fillColor: Color(0xFFEFF0F6),
                hintText: 'Confirm password',
                hintStyle: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    borderSide: BorderSide.none
                )
            ),

          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        StatelessButton(buttonText: 'Create an account', buttonColor: Color(0xFF001F3E),onPress: () async {}),
        SizedBox(height: MediaQuery.of(context).size.height*0.06,),
      ],
    );
  }

  Widget Footer(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Already have an account? ", style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: MediaQuery.of(context).size.height*0.018,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600]
          ),),
          GestureDetector(
            child: Text(" Login", style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: MediaQuery.of(context).size.height*0.018,
                fontWeight: FontWeight.bold
            ),),
            onTap: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: LoginScreen()));
            },
          ),
        ]

    );
  }
}
