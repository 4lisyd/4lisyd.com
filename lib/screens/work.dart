import 'package:alisyed_com/screens/work/work1_intro.dart';
import 'package:alisyed_com/screens/work/work2_skills21.dart';
import 'package:alisyed_com/screens/work/work3_skills22.dart';
import 'package:alisyed_com/screens/work/work4_skills23.dart';
import 'package:alisyed_com/screens/work/work5_skills24.dart';
import 'package:alisyed_com/screens/work/work6_contact.dart';
import 'package:alisyed_com/screens/work/work7_web_portfolio.dart';
import 'package:alisyed_com/screens/work/work8_app_portfolio.dart';

// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// // import 'dart:ui' as ui;
// import 'package:lottie/lottie.dart';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:mouse_parallax/mouse_parallax.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  ScrollController homeScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    
    // homeScrollController.addListener(() {
    //   setState(() {
    //     print(homeScrollController.offset);
    //     print("homeScrollController.offset");

    //     // if (homeScrollController.offset > 650) {
    //     //   programmerLottieAppears = true;
    //     // }
    //   });
    // });
  }

  void dispose() {
    super.dispose();
    print('disposed');
  }

  dynamic scaleScrollTemp = 100000;
  bool programmerLottieAppears = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (pointerHoverEvent) {},
      child: SingleChildScrollView(
        controller: homeScrollController,
        child: Column(
          children: [
            Work1(), //my picture and HI
            Work21(), // three taps and skills
            Work22(), //misc
          
            Work23(), //misc
            Work24(), //misc
            Work31(), //bye bye and footer
            WorkAppDev(),
            WorkWebDev(),
          ],
        ),
      ),
    );
  }
}
