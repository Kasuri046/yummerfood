import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final TextAlign textAlign;


  AppLargeText({Key? key,
    this.size=24,
    required this.text,
    this.color=Colors.black,
    this.textAlign = TextAlign.center
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500
      ),
    );
  }
}

