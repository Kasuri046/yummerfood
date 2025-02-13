import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppMediumText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppMediumText({Key? key,
    this.size=19,
    required this.text,
    this.color=Colors.black
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w700
      ),
    );
  }
}

