import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
      // alignment: Alignment(0, 0),
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  "Welcome,",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  "M.Alwan",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 4, 67, 119)),
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.shopping_cart_checkout),
          const SizedBox(
            width: 5,
          ),
          const Icon(Icons.notification_add),
          const Padding(
            padding: EdgeInsets.only(left: 5, right: 10),
            child: Image(
              image: AssetImage("lib/assets/person.png"),
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
