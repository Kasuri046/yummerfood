import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_assets_colors.dart';

class EmptyCard extends StatefulWidget {
  const EmptyCard({super.key});

  @override
  State<EmptyCard> createState() => _EmptyCardState();
}

class _EmptyCardState extends State<EmptyCard> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.bodyColor,
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: AppColors.bodyColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: screenHeight * 0.40,
                width: screenWidth * 0.80,
                color: Colors.black.withOpacity(0.0),
                child: Image.asset('assets/order/empycard.png')),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your cart is empty!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 25,),
            Text(
              textAlign: TextAlign.center,
              'Qui ex aute ipsum duis. Incididunt adipisicing voluptate laborum',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor),
            )
          ],
        ),
      ),
    );
  }
}
