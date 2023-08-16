import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class CustomHttp extends StatefulWidget {
  CustomHttp({super.key});

  @override
  State<CustomHttp> createState() => _CustomHttpState();
}

class _CustomHttpState extends State<CustomHttp> {
  // var url = Uri.https('https://www.google.com/');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
          onPressed: _openLink,
          child: Text('Open Link'),
        ),
      ]),
    );
  }

  void _openLink() async {
    final url = 'https://www.google.com'; // Replace with the desired URL

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
