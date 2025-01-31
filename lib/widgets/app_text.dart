import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final TextAlign textAlign;


  AppText({Key? key,
    this.size=16,
    required this.text,
    this.color=Colors.black,
    this.textAlign=TextAlign.center
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: size,
      ),
    );
  }
}

