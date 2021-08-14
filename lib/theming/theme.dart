import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    iconTheme: IconThemeData(color: Colors.white),
    primaryIconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Color(0xffffff22),
    accentColor: Color(0xffffff22),
    primaryColorDark: Colors.black,
    textTheme: TextTheme(
        button: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 10,
                color: Color(0xffffff22),
              )
            ]),
        headline1: GoogleFonts.aclonica(
          fontSize: 40,
          color: Color(0xffffff22),
          shadows: [
            Shadow(
              blurRadius: 20,
              color: Color(0xffffffff),
            )
          ],
        ),
        headline2: GoogleFonts.montserrat(),
        headline3: GoogleFonts.arvo(
            color: Color(0xffffff22), fontWeight: FontWeight.w700),
        bodyText1: GoogleFonts.mulish(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            // letterSpacing: 2,
            color: Colors.white,
            textStyle: TextStyle(textBaseline: TextBaseline.alphabetic)
            // shadows: [
            //   Shadow(
            //     blurRadius: 20,
            //     color: Color(0xffffff22),
            //   )
            // ],
            )),
  );
}
