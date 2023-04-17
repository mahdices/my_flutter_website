import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_site/components/my_site_scaffold.dart';
import 'package:my_site/custom_clip.dart';
import 'package:my_site/main.dart';
import 'package:my_site/shape.dart';
import 'package:my_site/styles/styles.dart';

class DesktopHeaderLanding extends StatelessWidget {
  DesktopHeaderLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: EdgeInsets.only(left: 150, right: 45),
      decoration: BoxDecoration(color: Color(0xff3E3E3E)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mahdi Mirzadeh,\nMobile\nDeveloper.",
                style: $style.text.h1,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Reach out with easy access, I am available for new awesome project inquiry!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Contact Me"))
            ],
          )),
          // SizedBox(
          //     width: 500,
          //     child: Stack(
          //       children: [
          //         AspectRatio(
          //           aspectRatio: 1,
          //           child: Padding(
          //             padding: const EdgeInsets.only(right: 30, top: 30),
          //             child: RotatedBox(
          //               quarterTurns: 1,
          //               child: CustomPaint(
          //                 painter: SiteShape(),
          //                 child: SizedBox(
          //                   width: double.infinity,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(20.0),
          //           child: Stack(
          //             children: [
          //               SizedBox(
          //                 height: 600,
          //                 child: CustomPaint(
          //                   painter: LandingShape(),
          //                   child: Container(width: double.infinity),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 600,
          //                 width: double.infinity,
          //                 child: ClipPath(
          //                     child: Padding(
          //                       padding: const EdgeInsets.only(
          //                           right: 32, top: 32, left: 32),
          //                       child: Image.asset(
          //                         'assets/images/me.png',
          //                         fit: BoxFit.cover,
          //                         alignment: Alignment.topCenter,
          //                       ),
          //                     ),
          //                     clipper: LandingClipper()),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Positioned(
          //           bottom: 0,
          //           child: CustomPaint(
          //             painter: SiteShape(Color(0xff8E8E8E)),
          //             child: SizedBox(
          //               width: 215,
          //               height: 215,
          //             ),
          //           ),
          //         ),

          //         // SizedBox(
          //         //   width: 300,
          //         //   height: 300,
          //         //   child: CustomPaint(painter: SiteShape()),
          //         // )
          //       ],
          //     ))
        ],
      ),
    );
  }
}
