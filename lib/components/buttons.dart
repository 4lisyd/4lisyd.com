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
        style: Theme.of(context).textTheme.button?.copyWith(
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

class GlowingButton extends StatefulWidget {
  final Color color1;
  final Color color2;
  final Function onPressFunc;

  
  // final String title;

  const GlowingButton(
      {Key key, this.color1 = Colors.cyan, this.color2 = Colors.greenAccent, this.onPressFunc})
      : super(key: key);
  @override
  _GlowingButtonState createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton> {
  var glowing = true;
  var scale = 1.0;

  var onPressFunc;
  @override
  Widget build(BuildContext context) {
    //On mobile devices, gesture detector is perfect
    //However for desktop and web we can show this effect on hover too
    return TextButton(
      onPressed: onPressFunc, 

      child: MouseRegion(
        onEnter: (val) {
          setState(() {
            glowing = true;
            scale = 1.2;
          });
        },
        onExit: (val) {
          setState(() {
            glowing = false;
            scale = 1.0;
          });
        },
        child: AnimatedContainer(
          transform: Matrix4.identity()..scale(scale),
          duration: Duration(milliseconds: 200),
          height: 48,
          width: 160,
          onEnd: () {
            glowing = !glowing;
          },
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                colors: [
                  widget.color1,
                  widget.color2,
                ],
              ),
              boxShadow: glowing
                  ? [
                      BoxShadow(
                        color: widget.color1.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 16,
                        offset: Offset(-8, 0),
                      ),
                      BoxShadow(
                        color: widget.color2.withOpacity(0.6),
                        spreadRadius: 1,
                        blurRadius: 16,
                        offset: Offset(8, 0),
                      ),
                      BoxShadow(
                        color: widget.color1.withOpacity(0.2),
                        spreadRadius: 16,
                        blurRadius: 32,
                        offset: Offset(-8, 0),
                      ),
                      BoxShadow(
                        color: widget.color2.withOpacity(0.2),
                        spreadRadius: 16,
                        blurRadius: 32,
                        offset: Offset(8, 0),
                      )
                    ]
                  : []),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                glowing ? "Let's work?" : "Hire Me",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
