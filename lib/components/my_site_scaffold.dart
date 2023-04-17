import 'package:flutter/material.dart';
import 'package:my_site/styles/styles.dart';

class MySiteScaffold extends StatelessWidget {
  final Widget child;
  const MySiteScaffold({super.key, required this.child});

  static AppStyle style = AppStyle();

  @override
  Widget build(BuildContext context) {
    style = AppStyle(context);
    return child;
  }
}
