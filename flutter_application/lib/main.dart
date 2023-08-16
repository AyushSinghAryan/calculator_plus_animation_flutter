import 'package:flutter/material.dart';
import 'package:flutter_application/applications/theme_animation/theme_animation_screen.dart';
import 'package:flutter_application/applications/theme_service.dart';

import 'package:flutter_application/home_page.dart';
import 'package:flutter_application/themes/theme.dart';
import 'package:provider/provider.dart';

import 'buttons.dart';

import 'components/bottom_nav.dart';
import 'components/custom_container.dart';
import 'form_val.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // we can use theme mode to check effect of applied theme
        themeMode: themeService.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: MyCustomNavBar(),
        routes: <String, WidgetBuilder>{
          '/root': (BuildContext context) => const HomePage(), // screen1
          '/CalculatorScreen': (BuildContext context) =>
              CalculatorScreen(), //screen2
          '/MyForm': (BuildContext context) => MyForm(), // screen3
          '/CustomContainer': (BuildContext context) =>
              CustomContainer(), // screen
        },
      );
    });
  }
}
