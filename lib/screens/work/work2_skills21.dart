import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:lottie/lottie.dart';
import 'dart:ui' as ui;

class Work21 extends StatefulWidget {
  @override
  _Work21State createState() => _Work21State();
}

class _Work21State extends State<Work21> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
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
          top: 0,
          right: MediaQuery.of(context).size.width / 8,
          bottom: MediaQuery.of(context).size.height / 4,
          // width: MediaQuery.of(context).size.width / 3,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).accentColor.withOpacity(0.2),
            radius: MediaQuery.of(context).size.width / 5,
            child: AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(seconds: 3),
              curve: Curves.easeInOut,
              child: LottieBuilder.asset(
                'lib/assets/animations/18123-developer.json',
                // height: MediaQuery.of(context).size.height / 1.5,
                reverse: true,

                // animate it from here

                animate: false,
                // width: MediaQuery.of(context).size.width / 15,
              ),
            ),
          ),
        ),
        // Positioned(
        //   top: 20,
        //   right: MediaQuery.of(context).size.width / 5,
        //   child: AnimatedOpacity(
        //     opacity: 1.0,
        //     duration: Duration(seconds: 3),
        //     curve: Curves.easeInOut,
        //     child: LottieBuilder.asset(
        //       'lib/assets/animations/18123-developer.json',
        //       // height: MediaQuery.of(context).size.height / 1.5,
        //       reverse: true,
        //       animate: false,
        //       // width: MediaQuery.of(context).size.width / 15,
        //     ),
        //   ),
        // ),
        Positioned(
          left: 20,
          child: Column(
            children: [
              AutoSizeText(
                'S',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 40,
                      color: Theme.of(context).buttonColor,
                    ),
              ),
              AutoSizeText(
                'K',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 40,
                      color: Theme.of(context).primaryColorDark,
                    ),
              ),
              AutoSizeText(
                'i',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 40,
                      color: Theme.of(context).primaryColorDark,
                    ),
              ),
              AutoSizeText(
                'L',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 40,
                      color: Theme.of(context).primaryColorDark,
                    ),
              ),
              AutoSizeText(
                'L',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 40,
                      color: Theme.of(context).primaryColorDark,
                    ),
              ),
              AutoSizeText(
                'S',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 40,
                      color: Theme.of(context).buttonColor,
                    ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.2923077 / 2,
                    right: 20,
                    bottom: 20,
                    top: 20),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Theme.of(context).primaryColorDark.withOpacity(.3)),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Software Dev.',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline3.copyWith(
                            fontSize: 22,
                          ),
                    ),
                    // Container(
                    //   height:
                    //       MediaQuery.of(context).size.height / 5,
                    //   child: Image.asset(
                    //     'lib/assets/pngs/coding.png',
                    //     colorBlendMode: BlendMode.color,
                    //   ),
                    // ),
                    AutoSizeText(
                      'Cross-platform application development for numerous platform with cunning simplicity and consistent thoughout.',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 11,
                          ),
                      textAlign: TextAlign.center,

                      // minFontSize: 8,
                      maxLines: 5,
                    ),
                    addSoftwareDevSkill(context, 'iOS'),
                    addSoftwareDevSkill(context, 'Android'),
                    addSoftwareDevSkill(context, 'Windows, Mac OS'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.2923077 / 2,
                    right: 20,
                    bottom: 20,
                    top: 20),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Theme.of(context).primaryColorDark.withOpacity(.3)),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'UX/UI Design.',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline3.copyWith(
                            fontSize: 22,
                          ),
                    ),
                    // Container(
                    //   height:
                    //       MediaQuery.of(context).size.height / 5,
                    //   child: Image.asset(
                    //     'lib/assets/pngs/computer.png',
                    //     colorBlendMode: BlendMode.color,
                    //   ),
                    // ),
                    AutoSizeText(
                      'I value simple content structure, clean design patterns, and thoughtful interactions.',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 11,
                          ),
                      maxLines: 4,
                    ),
                    addSoftwareDevSkill(context, 'Web'),
                    addSoftwareDevSkill(context, 'Mobile Apps'),
                    addSoftwareDevSkill(context, 'Animation'),
                  ],
                ),
              ),
              /////////////////////////////////// web dev //////////////////////////////////
              ///
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.2923077 / 2,
                    right: 20,
                    bottom: 20,
                    top: 20),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 3.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Theme.of(context).primaryColorDark.withOpacity(.3)),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Web Dev.',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline3.copyWith(
                            fontSize: 22,
                          ),
                    ),
                    // Container(
                    //   height:
                    //       MediaQuery.of(context).size.height / 5,
                    //   child: Image.asset(
                    //     'lib/assets/pngs/seo.png',
                    //     // colorBlendMode: BlendMode.color,
                    //   ),
                    // ),
                    AutoSizeText(
                      'I like to code things from scratch, and enjoy bringing ideas to life in the browser.',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 11,
                          ),
                    ),
                    addSoftwareDevSkill(context, 'Html/Css/Javascript'),
                    addSoftwareDevSkill(context, 'Fluid Flutter Web Apps'),
                    addSoftwareDevSkill(
                      context,
                      'WordPress, etc',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget addSoftwareDevSkill(BuildContext context, String skillName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.add,
        size: 15,
        color: Theme.of(context).accentColor,
      ),
      AutoSizeText(
        skillName,
        maxLines: 1,
        minFontSize: 12,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 12,
            ),
      ),
    ],
  );
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
        [Color(0xffffff22), Color(0x00000000)],
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
