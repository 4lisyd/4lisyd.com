import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_fonts/google_fonts.dart';

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
        scaleScrollTemp = (homeScrollController.offset - 1000).abs();
      });
    });
  }

  void dispose() {
    super.dispose();
    print('disposed');
  }

  dynamic scaleScrollTemp = 100000;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (PointerHoverEvent) {
        print(PointerHoverEvent.position);

        print(PointerHoverEvent.position.dx);
      },
      child: SingleChildScrollView(
        controller: homeScrollController,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height / 16,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    // right=: 0,
                    child: TweenAnimationBuilder<Color>(
                      onEnd: () {
                        print(homeScrollController.position);
                        homeScrollController.animateTo(15,
                            duration: Duration(seconds: 2),
                            curve: Curves.bounceOut);
                      },
                      curve: Curves.easeInOut,
                      tween: ColorTween(
                        begin: Colors.black,
                        end: Colors.yellow.withOpacity(0.2),
                      ),
                      duration: Duration(seconds: 2),
                      builder: (BuildContext _, Color color, Widget __) {
                        return ColorFiltered(
                          colorFilter: ColorFilter.mode(color, BlendMode.color),
                          child: Image.asset(
                            'assets/images/myPortraits/portraitDistortion.png',
                            fit: BoxFit.fitHeight,
                            height: scaleScrollTemp,
                            // color: color,
                            // height: 800,
                            // width: 400,
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 20,
                    bottom: MediaQuery.of(context).size.height / 1.5,
                    child: Text(
                      "Hi, I'm Ali",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 20,
                    bottom: MediaQuery.of(context).size.height / 1.6,
                    child: Text(
                      "Nice to meet you.",
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    // left: MediaQuery.of(context).size.width / 20,
                    bottom: 10,
                    child: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor.withOpacity(.3),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20))),
                      // width: MediaQuery.of(context).size.width / 2.6,
                      width: scaleScrollTemp,
                      child: Column(
                        children: [
                          Text(
                            "Who's this guy?",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "Since beginning my journey as a freelance designer nearly 10 years ago, I've done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I'm quietly confident, naturally curious, and perpetually working on improving my chops one design problem at a time.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   right: MediaQuery.of(context).size.width / 20,
                  //   top: MediaQuery.of(context).size.height / 2,
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width / 3,
                  //     child:
                  //   ),
                  // ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).size.height / 16,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: CustomPaint(
                    size: Size(
                        MediaQuery.of(context).size.width,
                        (MediaQuery.of(context).size.width)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                ),
                Positioned(
                  child: Row(
                    children: [Text('data')],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 0, 142, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.069999933242798;
    paint_0.shader = ui.Gradient.linear(
        Offset(0, size.height * 1.55),
        Offset(size.width, 0),
        [Color(0xffffff22), Color(0xffffffff)],
        [0.00, 1.00]);

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, 0);
    path_0.quadraticBezierTo(size.width * 0.7060846, size.height * 1.5522429,
        size.width * 0.2923077, 0);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
