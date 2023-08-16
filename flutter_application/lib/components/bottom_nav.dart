import 'package:flutter/material.dart';
import 'package:flutter_application/applications/theme_animation/theme_animation_screen.dart';
import 'package:flutter_application/form_val.dart';
import 'package:flutter_application/home_page.dart';

import '../buttons.dart';

class MyCustomNavBar extends StatefulWidget {
  const MyCustomNavBar({super.key});

  @override
  State<MyCustomNavBar> createState() => _MyCustomNavBarState();
}

class _MyCustomNavBarState extends State<MyCustomNavBar> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: count,
        children: [
          HomePage(),
          CalculatorScreen(),
          MyForm(),
          ThemeAnimationScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onTap: (value) {
            setState(() {
              count = value;
            });
          },
          currentIndex: count,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate), label: "Main Calculator"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate_rounded), label: "OK Calculator"),
            BottomNavigationBarItem(icon: Icon(Icons.forum), label: "Form"),
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens), label: "Theme"),
          ]),
    );
  }
}
