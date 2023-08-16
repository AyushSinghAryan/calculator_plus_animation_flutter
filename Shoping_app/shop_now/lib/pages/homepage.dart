import 'package:flutter/material.dart';
import 'package:shop_now/components/chess_slider.dart';
import 'package:shop_now/components/slider.dart';
import 'package:shop_now/pages/welcome.dart';

import '../components/bottom_nav.dart';
import '../components/brand_logo_slider.dart';
import '../components/categories.dart';
import '../components/curve .dart';
import '../components/custom_drawer.dart';
import '../components/product_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    // alignment: Alignment(0, 0),
                    child: ClipPath(
                      clipper: WaveCurve(),
                      child: Container(
                        color: Color(0XFFDEF9F9),
                        height: 200,
                        width: double.infinity,
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Company",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "LOGO",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Welcome(),
                ],
              ),
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 260,
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(0, 0)),
                        ],
                      ),
                      child: const Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Find the best Vape...',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage("lib/assets/adjustBtn.png"),
                      height: 50,
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomSlider(),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Categories",
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 67, 119),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text("View More",
                        style:
                            TextStyle(color: Color.fromARGB(255, 4, 67, 119)))
                  ],
                ),
              ),
              // CustomCategories(),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 10),
                child: Container(
                  child: CustomCategories(),
                  height: 150,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, top: 10, right: 25, bottom: 10),
                child: ChessSlider(),
              ),
              Container(
                color: const Color(0XFFFFF5F5),
                height: 250,
                width: double.infinity,
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        "Top Brands",
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 67, 119),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  BrandLogoSlider(),
                  const SizedBox(
                    height: 10,
                  ),
                  BrandLogoSlider(),
                  const SizedBox(
                    height: 10,
                  ),
                  BrandLogoSlider(),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              // Container(
              //   child: ProductList(),
              //   height: double.infinity,
              // )
            ],
          ),
        ),
        drawer: CustomDrawer(),
        bottomNavigationBar: MyNavBar(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ));
  }
}
              // color: Color(0XFFDEF9F9),
