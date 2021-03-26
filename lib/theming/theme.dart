import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
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
              color: Color(0xffffff22),
            )
          ],
        ),
        bodyText1: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w200,
          letterSpacing: 2,
          color: Colors.white,
          // shadows: [
          //   Shadow(
          //     blurRadius: 20,
          //     color: Color(0xffffff22),
          //   )
          // ],
        )),
  );
}
