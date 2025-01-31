import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final double buttonHeight;
  final double buttonWidth;
  final Color? buttonColor;
  final String? text;
  final double? textSize;
  final bool isBold;
  final Color textColor;
  final String? imagePath;
  final double borderRadius;
  final double imageBorderRadius;

  const CustomButtons({
    Key? key,
    this.text,
    required this.onPressed,
    required this.buttonHeight,
    required this.buttonWidth,
    this.buttonColor,
    this.textSize,
    required this.isBold,
    required this.textColor,
    this.imagePath,
    required this.borderRadius,
    this.imageBorderRadius = 10, // Default value
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          color: buttonColor,
        ),
        child: Stack(
          children: [
            if (imagePath != null) // Image Not Equal To Null
              ClipRRect(
                borderRadius: BorderRadius.circular(imageBorderRadius), // Apply border radius to the image
                child: Image.asset(
                  imagePath!,
                  fit: BoxFit.cover,
                  height: buttonHeight,
                  width: buttonWidth,
                ),
              ),
            Center(
              child: Text(
                text ?? '',
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
