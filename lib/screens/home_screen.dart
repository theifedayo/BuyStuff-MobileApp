import 'package:flutter/material.dart';
import 'package:buystuff/components/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:buystuff/components/product_category_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'productlist_screen.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        leadingWidth: 0,
        title: Column(
          children: [
            Header(screenName: "Mall", screenNameSize: 22, rightWidget: IconButton(icon: Icon(FontAwesomeIcons.solidBell, color: Colors.black54,),iconSize: 25, onPressed: null)),
            Header(screenName: "Hi, ifedayo 👋🏼", screenNameSize: 18, rightWidget: Text("")),

          ],
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,

      ),
      body: ListView(
        children: [
          Container(
          width: MediaQuery.of(context).size.width*0.66,
          height: MediaQuery.of(context).size.height*0.09,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 12, right: 12),
              child: TextFormField(
                onTap: (){
                  print("------");

                },

                style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: InkWell(child: Icon(FontAwesomeIcons.search, size: 18, color: Colors.grey,), onTap: (){

                      },),
                    ),
                    filled: true,
                    fillColor: Color(0xFFEFF0F6),
                    hintText: 'What are you looking for ?',
                    hintStyle: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide.none,
                    )
                ),

              ),
            ),
          ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                color: Colors.white,
              )
          ),
          GridView.count(
                primary: false,
                padding: const EdgeInsets.only(top:20, left: 20, right: 20, bottom: 30),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: <Widget>[
                  ProductCategory(emoji: "🔥", categoryName: "Trending", onPress: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ProductListScreen()));
                  }),
                  ProductCategory(emoji: "👗", categoryName: "Fashion", onPress: null),
                  ProductCategory(emoji: "📱", categoryName: "Phones & Tablets", onPress: null),
                  ProductCategory(emoji: "🖥", categoryName: "Electronics", onPress: null),
                  ProductCategory(emoji: "🚘", categoryName: "Automobile", onPress: null),
                  ProductCategory(emoji: "🏈", categoryName: "Sport", onPress: null),
                  ProductCategory(emoji: "🍰", categoryName: "Food", onPress: null),
                  ProductCategory(emoji: "🎮", categoryName: "Gaming", onPress: null),
                  ProductCategory(emoji: "🐶", categoryName: "Animals", onPress: null),
                  ProductCategory(emoji: "👶🏼", categoryName: "Babies", onPress: null),
                  ProductCategory(emoji: "💅🏽", categoryName: "Health & Beauty", onPress: null),
                  ProductCategory(emoji: "🏠", categoryName: "Home & Office", onPress: null),
                  ProductCategory(emoji: "💼", categoryName: "Services", onPress: null),
                ],
              ),
        ],
      )
    );
  }
}
