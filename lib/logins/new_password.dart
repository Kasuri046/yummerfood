import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/logins/pass_reset_comp.dart';
import 'package:yummer/widgets/app_assets_colors.dart';
import 'package:yummer/widgets/app_medium_text.dart';
import 'package:yummer/widgets/app_text.dart';
import 'package:yummer/widgets/text_fields.dart';
import 'package:yummer/providers/newpass_provider.dart';

import '../widgets/customs_ buttons.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AppMediumText(text: 'Reset Password')],
        ),
      ),
      body: Consumer<NewPasswordModel>(
        builder: (context, passwordProvider, child) {
          return Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'Enter new password and confirm.',
                    color: AppColors.textColor,
                  ),
                  SizedBox(height: 25),
                  buildPasswordField(
                    controller: TextEditingController(text: passwordProvider.newPassword),
                    labelText: 'PASSWORD',
                    hintText: '*********',
                    isVisible: passwordProvider.isNewPasswordVisible,
                    toggleVisibility: () {
                      passwordProvider.toggleNewPasswordVisibility();
                    },
                    onChanged: (value) {
                      passwordProvider.setNewPassword(value);
                    },
                  ),
                  SizedBox(height: 20),
                  buildPasswordField(
                    controller: TextEditingController(text: passwordProvider.confirmPassword),
                    labelText: 'CONFIRM PASSWORD',
                    hintText: '*********',
                    isVisible: passwordProvider.isConfirmPasswordVisible,
                    toggleVisibility: () {
                      passwordProvider.toggleConfirmPasswordVisibility();
                    },
                    onChanged: (value) {
                      passwordProvider.setConfirmPassword(value);
                    },
                  ),
                  SizedBox(height: 30),
                  CustomButtons(
                    onPressed: () {
                      // Implement change password logic
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotSendMail()),
                      );
                    },
                    buttonHeight: 50,
                    buttonWidth: screenWidth,
                    isBold: true,
                    textColor: Colors.white,
                    borderRadius: 20,
                    imagePath: 'assets/button/btn.png',
                    text: 'CHANGE PASSWORD',
                    textSize: 16,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
