import 'package:flutter/material.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import 'package:yummer/widgets/app_large_text.dart';
import 'package:yummer/widgets/app_text.dart';
import 'package:yummer/widgets/customs_%20buttons.dart';

class ForgotSendMail extends StatefulWidget {
  const ForgotSendMail({super.key});

  @override
  State<ForgotSendMail> createState() => _ForgotSendMailState();
}

class _ForgotSendMailState extends State<ForgotSendMail> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 25, right: 25, top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: screenHeight * 0.35,
                width: screenWidth * 0.60,
                child: Image.asset('assets/images/forgotpassword.png')),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Container(
                height: screenHeight * 0.10,
                width: screenWidth * 0.70,
                child: Text(
                  textAlign: TextAlign.center,
                  'Your Password Has Been Reset!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                )),
            Container(
              height: screenHeight * 0.10,
              width: screenWidth * 0.70,
              child: AppText(
                text:
                    'Qui ex aute ipsum duis. Incididunt adipisicing voluptate laborum',
                color: AppColors.textColor,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            CustomButtons(
              onPressed: () {},
              buttonHeight: 50,
              buttonWidth: screenWidth,
              isBold: true,
              textColor: Colors.white,
              borderRadius: 20,
              imagePath: 'assets/button/btn.png',
              text: 'DONE',
              textSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
