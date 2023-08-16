import 'package:flutter/material.dart';
import 'package:shop_now/components/product_tile.dart';

import '../models/prodcut_categories.dart';

class CustomCategories extends StatelessWidget {
  CustomCategories({super.key});
  List<ProductCategories> products = [
    ProductCategories("lib/assets/salt.png", "Salt NIC"),
    ProductCategories("lib/assets/dispo.png", "Disposables"),
    ProductCategories("lib/assets/smoke.png", "Smoke Shop"),
    ProductCategories("lib/assets/glass.png", "Glasses"),
    ProductCategories("lib/assets/salt.png", "Salt NIC"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return CategoryProductTile(productCategories: products[index]);
          }),
    );
  }
}
