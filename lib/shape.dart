import 'package:flutter/material.dart';

class SiteShape extends CustomPainter {
  final Color color;
  SiteShape([this.color = Colors.orange]);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;

    // canvas.drawCircle(
    //     Offset(size.width / 2, size.height / 2), size.width / 2, paint);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromCenter(
                center: Offset(size.width / 2, size.height / 2),
                width: size.width,
                height: size.height),
            bottomLeft: Radius.circular(1000),
            bottomRight: Radius.circular(1000),
            topLeft: Radius.circular(40),
            topRight: Radius.circular(1000)),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
