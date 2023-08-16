// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shop_now/components/http.dart';

import 'package:shop_now/models/prodcut_categories.dart';

class CategoryProductTile extends StatelessWidget {
  ProductCategories productCategories;
  CategoryProductTile({
    Key? key,
    required this.productCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomHttp()),
                  );
                },
                child: Container(
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Image.asset(
                        productCategories.imagePath,
                        fit: BoxFit.fitWidth,
                      ),
                    )),
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            productCategories.customName,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
