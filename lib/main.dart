import 'package:alisyed_com/homePage.dart';
import 'package:alisyed_com/theming/theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:url_strategy/url_strategy.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

const String HomeRoute = '/home';
const String AboutRoute = '/about';
const String EpisodesRoute = '/episodes';
const String EpisodeDetailsRoute = '/episode';



// TODO: loader splash screen using index.html





void main() {
  setPathUrlStrategy();
  // setHashUrlStrategy();
  runApp(MyApp());
  var url = window.location.href;
  print(url);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

              // print('its web now');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: HomePage(),
      // initialRoute: 'travel',
      theme: theme(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context,  widget),
        maxWidth: 4000,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          // ResponsiveBreakpoint.resize(480, name: MOBILE),
          // ResponsiveBreakpoint.autoScale(800, name: TABLET),
          // ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          // ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ResponsiveBreakpoint.resize(2460, name: '4K'),
        ],
        background: Container(
          color: Color(0xFFF5F5F5),
        ),
      ),
    );
  }
}



