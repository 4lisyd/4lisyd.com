import 'package:alisyed_com/screens/travel/travel1_main.dart';
import 'package:flutter/material.dart';

class Travel extends StatefulWidget {
  const Travel({ Key key }) : super(key: key);

  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      


      child: Column(
        
        children: [
          Travel1_main(),
          // Container(height: 1000,color: Color(0xff1d0203),),
        ],
      ),
    );
  }
}