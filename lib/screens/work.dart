import 'package:alisyed_com/screens/work/work1_intro.dart';
import 'package:alisyed_com/screens/work/work2_skills21.dart';
import 'package:alisyed_com/screens/work/work3_skills22.dart';
import 'package:alisyed_com/screens/work/work4_skills23.dart';
import 'package:alisyed_com/screens/work/work5_skills24.dart';
import 'package:alisyed_com/screens/work/work6_contact.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:lottie/lottie.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  ScrollController homeScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    homeScrollController.addListener(() {
      setState(() {
        print(homeScrollController.offset);
        print("homeScrollController.offset");

        // if (homeScrollController.offset > 650) {
        //   programmerLottieAppears = true;
        // }
      });
    });
  }

  void dispose() {
    super.dispose();
    print('disposed');
  }

  dynamic scaleScrollTemp = 100000;
  bool programmerLottieAppears = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 0) {
          return MouseRegion(
            onHover: (pointerHoverEvent) {},
            child: SingleChildScrollView(
              controller: homeScrollController,
              child: Column(
                children: [
                  Work1(),
                  Work21(),
                  Work22(),
                  Work23(),
                  Work24(),
                  Work31(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
