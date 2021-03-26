import 'package:alisyed_com/components/buttons.dart';
import 'package:alisyed_com/screens/home.dart';
import 'package:alisyed_com/screens/work.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentBuildWhat = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 16,
        leadingWidth: MediaQuery.of(context).size.width / 2,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 30,
        leading: Text(
          'Ali Syed',
          style: GoogleFonts.pacifico(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.height / 16 / 2),
        ),
        actions: [
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
        ],
      ),
      body: SafeArea(
        // child: buildHome(currentBuildWhat),
        child: buildHome("work"),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}

Widget buildHome(String buildWhat) {
  if (buildWhat == 'home') return Home();
  if (buildWhat == 'work')
    return Work();
  else if (buildWhat == 'travel') {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('travel'),
        ],
      ),
    );
  }
}
