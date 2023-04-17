import 'package:flutter/material.dart';
import 'package:my_site/components/my_site_scaffold.dart';
import 'package:my_site/landing_page.dart';
import 'package:my_site/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My WebSite',
      builder: (context, child) {
        return MySiteScaffold(child: child ?? Container());
      },
      theme: ThemeData(
          useMaterial3: true, primarySwatch: Colors.blue, fontFamily: 'Nunito'),
      home: LandingPage(),
    );
  }
}

AppStyle get $style => MySiteScaffold.style;
