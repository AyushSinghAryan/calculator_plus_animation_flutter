import 'package:flutter/material.dart';

class WaveCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();

    // path.lineTo(0, h); d
    // path.lineTo(w, h);
    // path.quadraticBezierTo(0, 0, w, h);
    // path.lineTo(w, 0);

    path.lineTo(0, h);
    path.quadraticBezierTo(w - 5, h - 10, w + 20, 0);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
