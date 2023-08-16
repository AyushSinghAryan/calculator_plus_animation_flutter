import 'package:flutter/material.dart';
import 'package:shop_now/pages/homepage.dart';
import 'package:shop_now/pages/items.dart';

import 'components/brand_logo_slider.dart';
import 'components/categories.dart';
import 'components/logo.dart';
import 'components/product_list.dart';
import 'components/product_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}
