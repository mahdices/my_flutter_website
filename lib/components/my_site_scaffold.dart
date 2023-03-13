import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_site/styles/styles.dart';

class MySiteScaffold extends StatelessWidget {
  final Widget child;
  MySiteScaffold({super.key, required this.child});

  static AppStyle appStyle = AppStyle();

  @override
  Widget build(BuildContext context) {
    appStyle = AppStyle(context);
    return child;
  }
}
