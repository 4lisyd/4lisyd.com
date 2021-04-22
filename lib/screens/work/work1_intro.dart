import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
      color: Colors.black38,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            // right=: 0,
            child: TweenAnimationBuilder<Color>(
              onEnd: () {
                // print(homeScrollController.position);
                // homeScrollController.animateTo(15,
                //     duration: Duration(seconds: 2), curve: Curves.bounceOut);
              },
              curve: Curves.easeInOut,
              tween: ColorTween(
                begin: Colors.black,
                end: Theme.of(context).accentColor.withOpacity(0.2),
              ),
              duration: Duration(seconds: 2),
              builder: (BuildContext _, Color color, Widget __) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(color, BlendMode.color),
                  child: Image.asset(
                    'assets/images/myPortraits/portraitDistortion.png',
                    fit: BoxFit.fitHeight,
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
            width: MediaQuery.of(context).size.width / 3,
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor.withOpacity(.3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              // width: MediaQuery.of(context).size.width / 2.6,
              // width: scaleScrollTemp / 2,

              child: Column(
                children: [
                  Text(
                    "Who's this guy?",
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        .copyWith(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    "Since beginning my journey as a freelance designer nearly 10 years ago, I've done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I'm quietly confident, naturally curious, and perpetually working on improving my chops one design problem at a time.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: Colors.white),
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
    );
  }
}
