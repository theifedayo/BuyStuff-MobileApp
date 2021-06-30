import 'package:flutter/material.dart';
import 'package:buystuff/components/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:buystuff/components/product_category_widget.dart';


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
      body: GridView.count(
            primary: false,
            padding: const EdgeInsets.only(top:50, left: 20, right: 20, bottom: 30),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              //ProductCategory(emoji: "🔥", categoryName: "Trending", onPress: null),
              ProductCategory(emoji: "👗", categoryName: "Fashion", onPress: null),
              ProductCategory(emoji: "📱", categoryName: "Phones & Tablets", onPress: null),
              ProductCategory(emoji: "🖥", categoryName: "Electronics", onPress: null),
              ProductCategory(emoji: "🚘", categoryName: "Automobile", onPress: null),
              ProductCategory(emoji: "🏈", categoryName: "Sport", onPress: null),
              ProductCategory(emoji: "🍰", categoryName: "Food", onPress: null),
              ProductCategory(emoji: "💼", categoryName: "Services", onPress: null),
              ProductCategory(emoji: "🎮", categoryName: "Gaming", onPress: null),
              ProductCategory(emoji: "🐶", categoryName: "Animals", onPress: null),
              ProductCategory(emoji: "👶🏼", categoryName: "Babies", onPress: null),
              ProductCategory(emoji: "💅🏽", categoryName: "Health & Beauty", onPress: null),
              ProductCategory(emoji: "🏠", categoryName: "Home & Office", onPress: null),
            ],
          )
    );
  }
}
