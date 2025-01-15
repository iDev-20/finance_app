import 'package:flutter/material.dart';

class SideInsideCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0); // Top left
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.5,
      0,
      size.height, // Left side inward curve
    );
    path.lineTo(size.width, size.height); // Bottom right
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.5,
      size.width,
      0, // Right side inward curve
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
