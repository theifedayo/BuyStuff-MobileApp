import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                      child: Icon(Icons.chevron_left, color: Colors.black, size: 35,),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text("Login", style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                  child: Text("Login to your account", style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),

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
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: TextFormField(
                    //controller: passwordController,
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
                        // suffixIcon: IconButton(icon: Icon(vis?Icons.visibility_off: Icons.visibility), onPressed: (){
                        //   setState(() {
                        //     //vis = !vis;
                        //   });
                        // },),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                      child: InkWell(
                        child: Text("Forgot password?", style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.016,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),),
                        onTap: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
