import 'package:flutter/material.dart';

class Work23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfffcfff3),
      // height:
      //     MediaQuery.of(context).size.height - AppBar().preferredSize.height,
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(child: Image.asset('lib/assets/pngs/skillset.png')),
          // Center(
          //   child: Text('lib/assets/pngs/developers_responsibilities.png'),
          // ),
        ],
      ),
    );
  }
}
