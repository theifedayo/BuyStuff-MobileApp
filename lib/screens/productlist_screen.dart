import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:buystuff/components/product_card.dart';
import 'package:buystuff/components/header.dart';


class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _names = ["images/cake1.jpeg", "images/clothing1.jpeg", "images/sneakers2.jpeg", "images/clothing2.jpeg", "images/watch1.jpeg"];
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange
  ];

  @override
  void initState() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          content: ProductCard(imageLocation: _names[i],),//color: _colors[i]),
          likeAction: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(
              backgroundColor: Color(0xFFF0FFF0),
              content: Text("Added ${_names[i]} to cart", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),),
              duration: Duration(milliseconds: 1000),
            ));
          },
          superlikeAction: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text("Superliked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leadingWidth: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 10),
                  child: GestureDetector(child: Icon(Icons.chevron_left, color: Colors.black, size: 35,), onTap: (){
                    Navigator.pop(context);
                  },),
                ),
                Text("Trending 🔥", style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),),
                Spacer(),
                Image.asset(
                  "images/search-icon.png",
                  width: MediaQuery.of(context).size.width*0.12,
                )
              ]
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 60,
          elevation: 0,
        ),
        body: Container(
            child: Column(children: [
              Container(
                height: 650,
                child: SwipeCards(
                  matchEngine: _matchEngine,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      //color: _swipeItems[index].content.color,
                      child: Column(
                        children: [
                          // Text(
                          //   _swipeItems[index].content.text,
                          //   style: TextStyle(fontSize: 50),
                          // ),
                          Image.asset(
                            _swipeItems[index].content.imageLocation,
                            width: MediaQuery.of(context).size.width*0.7,
                            height: MediaQuery.of(context).size.height*0.7,
                          )

                        ],
                      ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            //color: _swipeItems[index].content.color,
                        )
                    );
                  },
                  onStackFinished: () {
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text("Stack Finished"),
                      duration: Duration(milliseconds: 500),
                    ));
                    //Navigator.pop(context);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(child: Container(
                    width: 70,
                    height: 70,
                    child: Center(
                      child: Text("❌", style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),),
                    ),
                    decoration: new BoxDecoration(

                      borderRadius: BorderRadius.circular(70.0),
                      color: Colors.white,
                    ),
                  ), onTap: (){
                    _matchEngine.currentItem?.nope();
                  },),
                  GestureDetector(child: Container(
                    width: 70,
                    height: 70,
                    child: Center(
                      child: Icon(FontAwesomeIcons.shareAlt, size: 30, color: Color(0xFF001F3E),),
                    ),
                    decoration: new BoxDecoration(

                      borderRadius: BorderRadius.circular(70.0),
                      color: Colors.white,
                    ),
                  ), onTap: (){

                  },),
                  GestureDetector(child: Container(
                    width: 70,
                    height: 70,
                    child: Center(
                      child: Text("💚", style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),),
                    ),
                    decoration: new BoxDecoration(

                      borderRadius: BorderRadius.circular(70.0),
                      color: Colors.white,
                    ),
                  ), onTap: (){
                    _matchEngine.currentItem?.like();
                  },),
                ],
              )
            ])));
  }
}
