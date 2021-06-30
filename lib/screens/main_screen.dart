import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'cart_screen.dart';
import 'sell_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';



class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Montserrat");
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    SellScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Icon(Icons.local_mall, size: 27),
              ),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top:0),
                child: Icon(FontAwesomeIcons.search, size: 23),
              ),
              label: 'Sell'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top:0),
                child: Icon(Icons.add_circle_outline_outlined, size: 32),
              ),
              label: 'Sell'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top:0),
                child: Icon(Icons.favorite, size: 27),
              ),
              label: 'Cart'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top:0),
                child: Icon(FontAwesomeIcons.solidUser, size: 23),
              ),
              label: 'Profile'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF001F3E),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
