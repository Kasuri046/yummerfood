import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummer/logins/verify_phone_number.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import 'package:yummer/widgets/app_medium_text.dart';
import 'package:yummer/widgets/app_text.dart';
import 'package:yummer/widgets/customs_%20buttons.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AppMediumText(text: 'Forgot Password')],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Column(
            children: [
              AppText(
                textAlign: TextAlign.start,
                text:
                    'Please enter your email address .you will recieve a link to create a new password via email.',
                color: AppColors.textColor,
              ),
              SizedBox(height: 25),
              TextField(
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'kristinwatson@mail.com',
                  hintStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(color: AppColors.textColor),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textColor),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textColor),
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomButtons(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> VerifyPhoneNumber()));
                },
                buttonHeight: 50,
                buttonWidth: screenWidth,
                isBold: true,
                textColor: Colors.white,
                borderRadius: 20,
                imagePath: 'assets/button/btn.png',
                text: 'SEND',
                textSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
