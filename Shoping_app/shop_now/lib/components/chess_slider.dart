import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChessSlider extends StatefulWidget {
  ChessSlider({super.key});

  @override
  State<ChessSlider> createState() => _ChessSliderState();
}

class _ChessSliderState extends State<ChessSlider> {
  List<String> images = [
    'lib/assets/chess.png',
    'lib/assets/chess.png',
    'lib/assets/chess.png',
  ];
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                      minWidth: constraints.maxWidth,
                    ),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: constraints.maxHeight,
                        aspectRatio: 21 / 9,
                        viewportFraction: 1.0,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeindex = index;
                          });
                        },
                      ),
                      items: images.map((String imageUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: constraints.maxWidth,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  imageUrl,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 5,
        ),
        buildIndicator(),
      ],
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeindex,
      count: images.length,
      effect: JumpingDotEffect(
          activeDotColor: const Color.fromARGB(255, 1, 41, 73),
          dotColor: const Color.fromARGB(255, 147, 184, 248),
          dotHeight: 8,
          dotWidth: 8),
    );
  }
}
