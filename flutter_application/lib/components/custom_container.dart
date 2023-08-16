import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(20)),
                height: 500,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  widthFactor: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(20)),
                    height: 250,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
