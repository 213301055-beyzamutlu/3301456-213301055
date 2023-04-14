import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:uygulama_1/screens/account.dart';
import 'package:uygulama_1/screens/home_screen.dart';
import 'package:uygulama_1/screens/cart_screen.dart';

import 'package:uygulama_1/screens/whish.dart';

class Screens extends StatefulWidget {
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int selectedIndex = 0;
  static List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    WhishScreen(),
    AccountScreen(),
    Container(),
  ];

  var tabs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: GNav(
            rippleColor:Colors.grey[300]!,
             hoverColor: Colors.grey[100]!,
             gap:8,
             activeColor: Colors.white,
             iconSize:24,
             padding: EdgeInsets.symmetric(horizontal:20,vertical:12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.redAccent,
            color:Colors.black,
            
                tabs: [
                  GButton(icon: LineIcons.home, text: 'Ana Menü'),
                  GButton(icon: LineIcons.shoppingBag, text: 'Sepet'),
                  GButton(icon: LineIcons.heart, text: 'İstekler'),
                  GButton(icon: LineIcons.user, text: 'Hesap'),
                ],
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
