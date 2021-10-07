import 'package:alisyed_com/components/buttons.dart';
import 'package:alisyed_com/screens/about.dart';
import 'package:alisyed_com/screens/home.dart';
import 'package:alisyed_com/screens/people.dart';
import 'package:alisyed_com/screens/travel.dart';
import 'package:alisyed_com/screens/work.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentBuildWhat = 'work';
  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 600;

    // if (isMobile) {
    //   print('its mobile');
    // } else
    //   print('its desktop');t
    return Scaffold(
      drawerScrimColor: Colors.black.withOpacity(.3),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('drawer header'),
            ),
            SimpleButton1('Home', () {
              setState(() {
                currentBuildWhat = 'home';
              });
            }, currentBuildWhat == 'home'),
            SimpleButton1('Travel', () {
              setState(() {
                currentBuildWhat = 'travel';
              });
            }, currentBuildWhat == 'travel'),
            SimpleButton1('People', () {
              setState(() {
                currentBuildWhat = 'people';
              });
            }, currentBuildWhat == 'people'),
            SimpleButton1('Work', () {
              setState(() {
                currentBuildWhat = 'work';
              });
            }, currentBuildWhat == 'work'),
            SimpleButton1('About', () {
              setState(() {
                currentBuildWhat = 'about';
              });
            }, currentBuildWhat == 'about'),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 16,
        leadingWidth: MediaQuery.of(context).size.width / 2,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 30,
        title: Text(
          'Ali Syed',
          style: GoogleFonts.pacifico(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.height / 16 / 2),
        ),
        actions: !isMobile
            ? [
                ButtonBar(
                  children: [
                    SimpleButton1('Home', () {
                      setState(
                        () {
                          currentBuildWhat = 'home';
                        },
                      );
                      print(currentBuildWhat);
                    }, currentBuildWhat == 'home'),
                    SimpleButton1('Travel', () {
                      setState(() {
                        currentBuildWhat = 'travel';
                      });
                    }, currentBuildWhat == 'travel'),
                    SimpleButton1('People', () {
                      setState(() {
                        currentBuildWhat = 'people';
                      });
                    }, currentBuildWhat == 'peopl'),
                    SimpleButton1('Work', () {
                      setState(() {
                        currentBuildWhat = 'work';
                      });
                    }, currentBuildWhat == 'work'),
                    SimpleButton1('About', () {
                      setState(() {
                        currentBuildWhat = 'about';
                      });
                    }, currentBuildWhat == 'about'),
                  ],
                ),
              ]
            : [],
      ),
      body: SafeArea(
        // child: buildHome(currentBuildWhat),

        // work by default
        child: buildHome("work"),
        // child: buildHome(currentBuildWhat),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}

Widget buildHome(String buildWhat) {
  if (buildWhat == 'home') return Home();
  if (buildWhat == 'work') return Work();
  if (buildWhat == 'travel') return Travel();
  if (buildWhat == 'about') return About();
  if (buildWhat == 'people') return People();

  return Text('sd');
}
