import 'package:flutter/material.dart';

class SimpleButton1 extends StatelessWidget {
  final String title;
  final Function onPressFunc;
  final bool selected;

  SimpleButton1(this.title, this.onPressFunc, this.selected);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressFunc,
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
              color: Colors.white,
            ),
      ),
      style: ButtonStyle(
          backgroundColor: selected
              ? MaterialStateProperty.all(Colors.black)
              : MaterialStateProperty.all(Colors.black12),
          elevation: MaterialStateProperty.all(20),
          overlayColor: MaterialStateProperty.all(Colors.black),
          // tapTargetSize: MaterialTapTargetSize.padded(),
          minimumSize: MaterialStateProperty.all(Size(100, 50))),
    );
  }
}
