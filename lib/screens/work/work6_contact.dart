import 'package:flutter/material.dart';
import 'dart:html' as html;

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
            SizedBox(
              height: 40,
            ),
            FlatButton(
              onPressed: () {
                html.window.open("https://github.com/4lisyd", "github");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("lib/assets/pngs/socialMedia_pngs/github.png"),
                  SizedBox(
                    width: 20,
                  ),
                  // Text('https://github.com/4lisyd'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                html.window
                    .open("https://www.linkedin.com/in/4lisyd", "LinkedIn");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("lib/assets/pngs/socialMedia_pngs/linkedin.png"),
                  SizedBox(
                    width: 20,
                  ),
                  // Text('https://www.linkedin.com/in/4lisyd'),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                html.window.open("mailto:4limsyed@gmail.com", "Email");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset("lib/assets/pngs/socialMedia_pngs/ema.png"),
                  Icon(Icons.email),

                  // Text('https://www.linkedin.com/in/4lisyd'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
