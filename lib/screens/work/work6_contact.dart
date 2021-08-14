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
                  ?.copyWith(color: Colors.black, fontSize: 24),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    html.window.open("https://github.com/4lisyd", "github");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/assets/pngs/socialMedia_pngs/githubIcon.png",
                        scale: 1.3,
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
                    html.window.open("mailto:4limsyed@gmail.com", "Email");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset("lib/assets/pngs/socialMedia_pngs/ema.png"),
                      Image.asset(
                        "lib/assets/pngs/socialMedia_pngs/emailIcon.png",
                        scale: 1.3,
                      ),

                      // Text('https://www.linkedin.com/in/4lisyd'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  onPressed: () {
                    html.window.open(
                        "https://www.linkedin.com/in/4lisyd/", "linkedIn");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/assets/pngs/socialMedia_pngs/linkedinIcon.png",
                        scale: 1.3,
                      ),

                      // Text('https://github.com/4lisyd'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



// icons needed twitter, github, email, linkedIn, instagram, youtube, behance, phone, facebook, whatsapp, telegram,

// get more from https://iconmonstr.com/ & 48pixels