import 'package:flutter/material.dart';

class Travel1_main extends StatefulWidget {
  const Travel1_main({ Key key }) : super(key: key);

  @override
  _Travel1_mainState createState() => _Travel1_mainState();
}

class _Travel1_mainState extends State<Travel1_main> {

  double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;
  double rateEight = 90;

  String asset;
  double top;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: NotificationListener(
        // ignore: missing_return
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            //only if scroll update notification is triggered
            setState(() {
              rateEight -= v.scrollDelta / 1;
              rateSeven -= v.scrollDelta / 1.5;
              rateSix -= v.scrollDelta / 2;
              rateFive -= v.scrollDelta / 2.5;
              rateFour -= v.scrollDelta / 3;
              rateThree -= v.scrollDelta / 3.5;
              rateTwo -= v.scrollDelta / 4;
              rateOne -= v.scrollDelta / 4.5;
              rateZero -= v.scrollDelta / 5;
            });
          }
        },
        
        child: Stack(
          children: [

            // Text('sd'),
            Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),

            ParallaxWidget(top: rateZero, asset: "parallax0"),
            ParallaxWidget(top: rateOne, asset: "parallax1"),
            ParallaxWidget(top: rateTwo, asset: "parallax2"),
            ParallaxWidget(top: rateThree, asset: "parallax3"),
            ParallaxWidget(top: rateFour, asset: "parallax4"),
            ParallaxWidget(top: rateFive, asset: "parallax5"),
            ParallaxWidget(top: rateSix, asset: "parallax6"),
            ParallaxWidget(top: rateSeven, asset: "parallax7"),
            // ParallaxWidget(top: rateEight, asset: "parallax8"),

            
          ],
        )),
      
    );
  }
}



class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    Key key,
    @required this.top,
    @required this.asset,
  }) : super(key: key);

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -45,
      top: top,
      child: Container(
        height: 550,
        width: 900,
        child: Image.asset("assets/images/travelParallax/$asset.png", fit: BoxFit.cover),
      
      ),
    );
  }
}
