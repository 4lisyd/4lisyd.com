import 'package:flutter/material.dart';

class Work31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xfffcfff3),
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 2 -
          AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: Theme.of(context).accentColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Would like to work with me?',
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  .copyWith(color: Colors.black, fontSize: 24),
            ),
            // Center(
            //   child: Container(
            //       child:
            //           Image.asset("lib/assets/pngs/socialMedia_pngs/github.png")),
            // ),
            //
            SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("lib/assets/pngs/socialMedia_pngs/github.png"),
                SizedBox(
                  width: 20,
                ),
                Text('https://github.com/4lisyd'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("lib/assets/pngs/socialMedia_pngs/linkedin.png"),
                SizedBox(
                  width: 20,
                ),
                Text('https://www.linkedin.com/in/4lisyd'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
