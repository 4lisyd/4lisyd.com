import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Work1 extends StatefulWidget {
  @override
  _Work1State createState() => _Work1State();
}

class _Work1State extends State<Work1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.height / 16,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.2),
      ),
      // color: Colors.black38,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            // right=: 0,
            child: TweenAnimationBuilder<Color>(
              // key: ,
              onEnd: () {
                // print(homeScrollController.position);
                // homeScrollControllebitnimateTo(15,
                //     duration: Duration(seconds: 2), curve: Curves.bounceOut);
              },
              curve: Curves.easeInOut,

              tween: ColorTween(
                begin: Theme.of(context).accentColor,
                end: Colors.black.withOpacity(0.2),
              ),
              duration: Duration(seconds: 2),
              builder: (BuildContext _, Color color, Widget __) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(color, BlendMode.color),
                  child: Image.asset(
                    'assets/images/myPortraits/portraitDistortion.png',
                    color: Theme.of(context).accentColor,
                    fit: BoxFit.fitHeight,
                  ),
                );
              },
            ),
          ),
          ParallaxStack(
            // dragCurve: Curves.deceerate,
            layers: [
              ParallaxLayer(
                zRotation: 0.03,
                yRotation: 0.05,
                xRotation: 0.06,
                xOffset: 20,
                yOffset: 20,
                child: Center(
                  child: Container(
                    width: 10000,
                    height: 10000,
                    color: Colors.black.withOpacity(0),
                    child: ColorFiltered(
                      colorFilter:
                          ColorFilter.mode(Color(0xf223344), BlendMode.color),
                      child: Image.asset(
                        'assets/images/myPortraits/portraitDistortion.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // interchanges btw full stack and all out using text

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'The Odyssey of a ',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                          shadows: [
                            Shadow(
                                blurRadius: 20,
                                color: Colors.black,
                                offset: Offset(20, 20))
                          ]),
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText(
                          'Full-Stack',
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline1
                              .copyWith(shadows: [
                            Shadow(
                                blurRadius: 20,
                                color: Colors.black,
                                offset: Offset(20, 20))
                          ], color: Colors.white),
                        ),
                        RotateAnimatedText(
                          'All-In',
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline1
                              .copyWith(shadows: [
                            Shadow(
                                blurRadius: 20,
                                color: Colors.black,
                                offset: Offset(20, 20))
                          ], color: Colors.white),
                        ),
                        RotateAnimatedText(
                          'Different',
                          textStyle: Theme.of(context)
                              .textTheme
                              .headline1
                              .copyWith(shadows: [
                            Shadow(
                                blurRadius: 20,
                                color: Colors.black,
                                offset: Offset(20, 20))
                          ], color: Colors.white),
                        ),
                      ],
                      displayFullTextOnTap: true,
                    ),
                    Text(
                      ' Developer',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                          shadows: [
                            Shadow(
                                blurRadius: 20,
                                color: Colors.black,
                                offset: Offset(20, 20))
                          ]),
                    ),
                  ],
                ),
                // Image.asset('lib/assets/pngs/socialMedia_pngs/github.png'),
                // Image.asset('lib/assets/pngs/socialMedia_pngs/twitter.png'),
                // Image.asset('lib/assets/pngs/socialMedia_pngs/instagram.png'),
                // Image.asset('lib/assets/pngs/socialMedia_pngs/linkedin.png'),
              ],
            ),
          ),

          // Positioned(
          //   right: 0,
          //   bottom: 0,
          //   width: MediaQuery.of(context).size.width / 2.2,
          //   height: MediaQuery.of(context).size.height / 2.5,
          //   child: Container(
          //     padding: EdgeInsets.all(20),
          //     margin: EdgeInsets.all(10),
          //     decoration: BoxDecoration(
          //         color: Theme.of(context).accentColor.withOpacity(.3),
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(20),
          //           bottomLeft: Radius.circular(20),
          //           topRight: Radius.circular(20),
          //         )),
          //     // width: MediaQuery.of(context).size.width / 2.6,
          //     // width: scaleScrollTemp / 2,

          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text(
          //           "Who's this guy?",
          //           style: Theme.of(context)
          //               .textTheme
          //               .headline2
          //               .copyWith(fontSize: 20, color: Colors.black),
          //         ),
          //         SizedBox(
          //           height: 10,
          //         ),
          //         Expanded(
          //           child: AutoSizeText(
          //             "Since beginning my journey as a freelance designer nearly 3 years ago, I've done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I'm quietly confident, naturally curious, and perpetually working on improving my chops one design problem at a time.",
          //             style: Theme.of(context)
          //                 .textTheme
          //                 .bodyText2
          //                 .copyWith(color: Colors.white),
          //             maxLines: 15,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

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
    );
  }
}
