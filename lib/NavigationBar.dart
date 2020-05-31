import 'package:ecommercesample/MyOrders.dart';
import 'package:ecommercesample/ProfilePage.dart';
import 'package:flutter/material.dart';

import 'Cart/CartPage.dart';
import 'HomePage.dart';


class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CartPage(),
    OrderPage(),
    ProfilePage()
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.home),
              activeIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.shopping_cart),
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              title: Text("Cart")),
          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.library_books),
              activeIcon: Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              title: Text("Orders")),
          BottomNavigationBarItem(
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.person),
              activeIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text("Profile")),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }


}
