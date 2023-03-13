import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    return MaterialApp.router(
      title: 'My WebSite',
      theme: ThemeData(
          useMaterial3: true, primarySwatch: Colors.blue, fontFamily: 'Nunito'),
      builder: (context, child) => MySiteScaffold(child: child!),
      routerConfig: GoRouter(routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => LandingPage(),
        ),
        // GoRoute(path: '/header',builder:(context, state) => Deskhe,)
      ]),
    );
  }
}

final AppStyle $style = MySiteScaffold.appStyle;
