import 'package:flutter/material.dart';

import '../models/product_cart.dart';
import '../pages/items.dart';
import '../pages/new _item.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});
  List<ProductCart> productCart = [
    ProductCart("lib/assets/item1.png", "POSH MAX", "Vapes"),
    ProductCart("lib/assets/item2.png", "Funky Rep", "E-liquids"),
    ProductCart("lib/assets/item2.png", "Esco bar", "-liquids"),
    ProductCart("lib/assets/item1.png", "Lost", "Vapes"),
    ProductCart("lib/assets/item1.png", "POSH MAX", "Vapes"),
    ProductCart("lib/assets/item2.png", "Funky Rep", "E-liquids"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: productCart.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return PizzaTile(
              productCart: productCart[index],
            );
          }),
    );
  }
}
