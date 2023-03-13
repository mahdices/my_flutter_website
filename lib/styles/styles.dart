import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class AppStyle {
  late final bool isLarge;
  AppStyle([BuildContext? context]) {
    if (context == null) {
      isLarge = true;
      return;
    }
    isLarge = Breakpoints.large.isActive(context);
  }

  late final text = _Text(isLarge);
}

class _Text {
  final bool isLarge;

  final h1LargeSize = 62.0;
  final h1SmallSize = 34.0;

  _Text(this.isLarge);

  late final h1 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: isLarge ? h1LargeSize : h1SmallSize,
  );
  final h2 = TextStyle();
}
