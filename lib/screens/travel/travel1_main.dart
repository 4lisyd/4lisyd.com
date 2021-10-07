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
  double rateEight = 50;

  String asset;
  double top;
  @override
  Widget build(BuildContext context) {

    return NotificationListener<ScrollUpdateNotification>(

      onNotification: (v) {
      
        if (v is ScrollUpdateNotification) {
          //only if scroll update notification is triggered
              // print('wtf');

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
          return true;
        }
        return false;
      },
      
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // alignment: Alignment.,

        child: Stack(
          children: [

            // Text('sd'),
            // Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),

            ParallaxWidget(top: rateZero, asset: "parallax0"),
            ParallaxWidget(top: rateOne, asset: "parallax1"),
            ParallaxWidget(top: rateTwo, asset: "parallax2"),
            ParallaxWidget(top: rateThree, asset: "parallax3"),
            ParallaxWidget(top: rateFour, asset: "parallax4"),
            ParallaxWidget(top: rateFive, asset: "parallax5"),
            ParallaxWidget(top: rateSix, asset: "parallax6"),
            ParallaxWidget(top: rateSeven, asset: "parallax7"),
            ParallaxWidget(top: rateEight, asset: "parallax8"),
            ListView(
              // cacheExtent: 10 ,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height *.71,
                  color: Colors.transparent,
                ),
                Container(
                  color: Color(0xff210002),
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 70),
                                    height: MediaQuery.of(context).size.height,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "I'd like to travel the world",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "MontSerrat-ExtraLight",
                            letterSpacing: 1.8,
                            color: Color(0xffffaf00)),
                      ),
                      Text(
                        "before i die",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "MontSerrat-Regular",
                            // letterSpacing: 1.8,
                            color: Color(0xffffaf00)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 190,
                        child: Divider(
                          height: 1,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "My inspiration to work harder was never having a lot of money.",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Montserrat-Extralight",
                          letterSpacing: 1.3,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      Text(
                        "- 4li",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Montserrat-Regular",
                          letterSpacing: 1.8,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            )

            
          ],
        ),
      ));
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
      // left: -45,
      top: top,
      child: Container(
        height: MediaQuery.of(context).size.height / 1.4,

        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/images/travelParallax/$asset.png", fit: BoxFit.cover,cacheHeight: 100,cacheWidth: 100,
        // width: 100,
        // height: 100,
        ),
      
      ),
    );
  }
}
