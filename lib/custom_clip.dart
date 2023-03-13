import 'package:flutter/material.dart';

class LandingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var rect = RRect.fromRectAndCorners(
      Rect.fromCenter(
          center: Offset(size.width / 2, size.height / 2),
          width: size.width,
          height: size.height),
      bottomLeft: Radius.circular(1000),
      bottomRight: Radius.circular(1000),
    );
    var path = Path();
    path.addRRect(rect);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LandingShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = RRect.fromRectAndCorners(
      Rect.fromCenter(
          center: Offset(size.width / 2, size.height / 2),
          width: size.width,
          height: size.height),
      bottomLeft: Radius.circular(1000),
      bottomRight: Radius.circular(1000),
    );
    canvas.drawRRect(rect, Paint()..color = Colors.grey);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
