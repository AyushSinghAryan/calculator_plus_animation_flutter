// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class MyNavBar extends StatefulWidget {
  void Function()? onTap;
  MyNavBar({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CurvedNavigationBar(
            // backgroundColor: Color(0xFF0A3E89),
            backgroundColor: Colors.white,
            height: 75,
            color: Color(0xFF0A3E89),
            animationDuration: Duration(milliseconds: 700),
            index: 2,
            buttonBackgroundColor: Color(0xFFCC2E1A),
            items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.shopping_cart, color: Colors.white),
          Icon(UniconsLine.apps, color: Colors.white),
          GestureDetector(
              onTap: widget.onTap,
              child: Icon(
                UniconsLine.user,
                color: Colors.white,
              ))
        ]));
  }
}
