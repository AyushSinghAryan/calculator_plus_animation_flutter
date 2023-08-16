// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:shop_now/models/product_cart.dart';

class PizzaTile extends StatelessWidget {
  ProductCart productCart;
  PizzaTile({
    Key? key,
    required this.productCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 210,
        width: 210,
        child: Column(
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(
                productCart.productImage,
                // fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(productCart.productName),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$40",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
