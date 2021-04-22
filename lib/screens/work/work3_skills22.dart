import 'package:flutter/material.dart';

class Work22 extends StatefulWidget {
  @override
  _Work22State createState() => _Work22State();
}

class _Work22State extends State<Work22> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - AppBar().preferredSize.height,
      child: Center(
        child: Text('sds'),
      ),
    );
  }
}
