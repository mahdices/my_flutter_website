import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_site/shape.dart';

class ItemWork extends StatelessWidget {
  const ItemWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(120),
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
            topRight: Radius.circular(40)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: RotatedBox(
              quarterTurns: 1,
              child: CustomPaint(
                painter: SiteShape(Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text("6th September 2021"),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
