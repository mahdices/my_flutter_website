import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:my_site/components/desktop_header_landing.dart';
import 'package:my_site/components/item_work.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      topNavigation: SlotLayout(config: {
        Breakpoints.large: SlotLayout.from(
          key: Key("header"),
          builder: (context) {
            return Material(
              child: Container(
                height: 100,
                color: Color(0xff3E3E3E),
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Row(
                  children: [
                    Text(
                      "MahdiCes",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    Spacer(),
                    TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("Works"),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("About"),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("Home"),
                    ),
                  ],
                ),
              ),
            );
          },
        )
      }),
      body: SlotLayout(config: {
        // Breakpoints.smallAndUp: SlotLayout.from(
        //   key: Key("small"),
        //   builder: (context) => Scaffold(
        //     body: Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.red,
        //     ),
        //   ),
        // ),
        Breakpoints.smallAndUp: SlotLayout.from(
          key: Key("large"),
          builder: (context) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    DesktopHeaderLanding(),
                    Container(
                      color: Color(0xffE5E5E5),
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "My Latest\nDevelopment Works",
                                style: TextStyle(
                                    fontSize: 60, fontWeight: FontWeight.w900),
                              )),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text("See All Works"))
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Column(
                            children: List.generate(
                                2,
                                (index) => Row(
                                      children: List.generate(
                                          3,
                                          (index) =>
                                              Expanded(child: ItemWork())),
                                    )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Breakpoints.large: SlotLayout.from(
          key: Key("large"),
          builder: (context) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    DesktopHeaderLanding(),
                    Container(
                      color: Color(0xffE5E5E5),
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "My Latest\nDevelopment Works",
                                style: TextStyle(
                                    fontSize: 60, fontWeight: FontWeight.w900),
                              )),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text("See All Works"))
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Column(
                            children: List.generate(
                                2,
                                (index) => Row(
                                      children: List.generate(
                                          3,
                                          (index) =>
                                              Expanded(child: ItemWork())),
                                    )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      }),
    );
  }
}
