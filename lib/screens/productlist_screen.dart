import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:buystuff/components/content.dart';
import 'package:buystuff/components/header.dart';


class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _names = ["Red", "Blue", "Green", "Yellow", "Orange"];
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
          content: Content(text: _names[i], color: _colors[i]),
          likeAction: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text("Liked ${_names[i]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text("Nope ${_names[i]}"),
              duration: Duration(milliseconds: 500),
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
                height: 550,
                child: SwipeCards(
                  matchEngine: _matchEngine,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: _swipeItems[index].content.color,
                      child: Text(
                        _swipeItems[index].content.text,
                        style: TextStyle(fontSize: 100),
                      ),
                    );
                  },
                  onStackFinished: () {
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text("Stack Finished"),
                      duration: Duration(milliseconds: 500),
                    ));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _matchEngine.currentItem?.nope();
                      },
                      child: Text("Nope")),
                  ElevatedButton(
                      onPressed: () {
                        _matchEngine.currentItem?.superLike();
                      },
                      child: Text("Superlike")),
                  ElevatedButton(
                      onPressed: () {
                        _matchEngine.currentItem?.like();
                      },
                      child: Text("Like"))
                ],
              )
            ])));
  }
}
