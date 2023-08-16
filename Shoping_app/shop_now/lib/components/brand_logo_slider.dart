import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shop_now/components/logo.dart';

import '../models/brand_logo.dart';

class BrandLogoSlider extends StatelessWidget {
  BrandLogoSlider({super.key});
  List<BrandLogo> brandList = [
    BrandLogo("lib/assets/logo1.png"),
    BrandLogo("lib/assets/logo2.png"),
    BrandLogo("lib/assets/logo3.png"),
    BrandLogo("lib/assets/logo4.png"),
    BrandLogo("lib/assets/logo5.png"),
    BrandLogo("lib/assets/logo6.png"),
    BrandLogo("lib/assets/logo7.png"),
    BrandLogo("lib/assets/logo8.png"),
    BrandLogo("lib/assets/logo9.png"),
    BrandLogo("lib/assets/logo10.png"),
    BrandLogo("lib/assets/logo11.png"),
    BrandLogo("lib/assets/logo12.png"),
    BrandLogo("lib/assets/logo13.png"),
    BrandLogo("lib/assets/logo14.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: brandList.length,
          itemBuilder: (context, index) {
            return CustomLogo(brandLogo: brandList[index]);
          }),
    );
  }
}
