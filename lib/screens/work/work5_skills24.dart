import 'package:flutter/material.dart';

class Work24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xfffcfff3),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ),
        ),
        height: MediaQuery.of(context).size.height -
            AppBar().preferredSize.height +
            MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Image.asset('lib/assets/pngs/developer_softskills.png'),
            ),
            // Center(
            //   child: Text('lib/assets/pngs/developers_responsibilities.png'),
            // ),
          ],
        ),
      ),
    );
  }
}
